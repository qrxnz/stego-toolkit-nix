{
  description = "stego-toolkit";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
  };

  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      system = "x86_64-linux";
      config.allowUnfree = true;
    };
  in {
    devShells.x86_64-linux.default =
      pkgs.mkShell
      {
        nativeBuildInputs = with pkgs; [
          # Basic tools
          file
          hexyl
          ffmpeg
          binwalk
          steghide
          stegseek
          exiftool
          foremost

          # Images
          zsteg
          pngcheck
          stegsolve
          imagemagick

          # Audio
          sonic-visualiser

          # Ohters
          ares-rs

          # Formatters
          treefmt2
          mdformat
          alejandra
        ];
      };
  };
}
