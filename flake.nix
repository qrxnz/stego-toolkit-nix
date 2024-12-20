{
  description = "A collection of flake templates";

  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
  in {
    devShells.${system}.default = pkgs.mkShell {
      buildInputs = with pkgs; [
        treefmt2
        mdformat
        alejandra
      ];
    };

    templates = {
      default = {
        path = ./stego-toolkit;
        welcomeText = ''


           ▄▀▀▀▀▄  ▄▀▀▀█▀▀▄  ▄▀▀█▄▄▄▄  ▄▀▀▀▀▄    ▄▀▀▀▀▄   ▄▀▀▀█▀▀▄  ▄▀▀▀▀▄   ▄▀▀▀▀▄   ▄▀▀▀▀▄      ▄▀▀▄ █  ▄▀▀█▀▄    ▄▀▀▀█▀▀▄
          █ █   ▐ █    █  ▐ ▐  ▄▀   ▐ █         █      █ █    █  ▐ █      █ █      █ █    █      █  █ ▄▀ █   █  █  █    █  ▐
             ▀▄   ▐   █       █▄▄▄▄▄  █    ▀▄▄  █      █ ▐   █     █      █ █      █ ▐    █      ▐  █▀▄  ▐   █  ▐  ▐   █
          ▀▄   █     █        █    ▌  █     █ █ ▀▄    ▄▀    █      ▀▄    ▄▀ ▀▄    ▄▀     █         █   █     █        █
           █▀▀▀    ▄▀        ▄▀▄▄▄▄   ▐▀▄▄▄▄▀ ▐   ▀▀▀▀    ▄▀         ▀▀▀▀     ▀▀▀▀     ▄▀▄▄▄▄▄▄▀ ▄▀   █   ▄▀▀▀▀▀▄   ▄▀
           ▐      █          █    ▐   ▐                  █                             █         █    ▐  █       █ █
                  ▐          ▐                           ▐                             ▐         ▐       ▐       ▐ ▐
        '';
      };
    };
  };
}
