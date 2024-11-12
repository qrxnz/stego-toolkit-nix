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
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    devShells.x86_64-linux.default =
      pkgs.mkShell
      {
        nativeBuildInputs = with pkgs; [
          # Basic tools
          file
          ffmpeg
          binwalk
          exiftool
          imagemagick

          # Images
          zsteg
          foremost
          pngcheck
          openstego

          # Audio
          sonic-visualiser
        ];
      };
  };
}

