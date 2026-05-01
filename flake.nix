{
  inputs.utils.url = "github:numtide/flake-utils";

  outputs = {
    self,
    nixpkgs,
    utils,
  }:
    utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {inherit system;};
      in {
        devShells.default = pkgs.mkShell rec {
          buildInputs = with pkgs; [
            treefmt2
            mdformat
            alejandra
          ];
        };

        devShells.stego-toolkit = pkgs.mkShell rec {
          buildInputs = import ./stego-toolkit/pkgs.nix pkgs;
        };

        packages.stego-toolkit = pkgs.writeScriptBin "stego-toolkit" ''
          #!${pkgs.runtimeShell}
          exec ${pkgs.nix}/bin/nix develop ${self}#stego-toolkit "$@"
        '';

        packages.default = self.packages."${system}".stego-toolkit;
      }
    )
    // {
      overlays.default = final: prev: {
        stego-toolkit = self.packages."${final.system}".stego-toolkit;
      };
    
      templates = {
        stego = {
          path = ./stego-toolkit;
        };
      };

      defaultTemplate = self.templates.stego;
    };
}
