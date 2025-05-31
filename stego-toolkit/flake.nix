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
          # Basic tools
          file
          hexyl
          ffmpeg
          binwalk
          steghide
          exiftool
          foremost

          # Images
          zsteg
          pngcheck
          imagemagick

          # Audio
          sonic-visualiser

          # Ohters
          ares-rs
          lemmeknow
          ];
        };
      }
    )
    // {
      overlays.default = self: pkgs: {
        hello = self.packages."${pkgs.system}".hello;
      };
    };
}
