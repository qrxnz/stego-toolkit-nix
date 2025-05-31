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
      }
    )
    // {
      overlays.default = self: pkgs: {
        hello = self.packages."${pkgs.system}".hello;
      };
    
      templates = {
        stego = {
          path = ./stego-toolkit;
        };
      };

      defaultTemplate = self.templates.stego;
    };
}
