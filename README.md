# stego-toolkit-nix

## ✒️ Description

> The finest collection of steganography tools. You like Docker? You love Nix

stego-toolkit-nix is a tool inspired by Dominic Breuker's `stego-toolkit`. By utilizing nix, stego-toolkit-nix offers greater flexibility, resulting in an improved user experience

## 📖 Usage

If you have Nix installed with `experimental features` and `flakes` support activated, the first step is to clone the repository

```sh
nix flake init -t github:qrxnz/stego-toolkit-nix
```

In the 'stego-toolkit-nix' directory, use the command `nix develop` or you can use `direnv` instead

Done! You can start using the tools. Below you will find a list and instructions

## 🧰 Tools

> \[!IMPORTANT\]
> New tools will soon be on the list

### Basic

| Tools | Description | File types | Usage |
| --- | --- | --- | --- |
| file | Identify file type  | - | `file file_name`  |
| [hexyl](https://github.com/sharkdp/hexyl)  |  A command-line hex viewer   | - | `hexyl file_name`  |
| [ffmpeg](https://ffmpeg.org/)  | FFmpeg is the leading multimedia framework, able to decode, encode, transcode, mux, demux, stream, filter and play pretty much anything that humans and machines have created. | Audio / Video / Images | `ffmpeg -v info -i stego.mp3 -f null -` \\ read docs for more |
| [steghide](https://steghide.sourceforge.net/)  | Steghide is a steganography program that is able to hide data in various kinds of image and audio files | - | `steghide extract -sf file_name` \\ read docs for more  |
| [stegseek](https://github.com/RickdeJager/stegseek)  | ⚡ Worlds fastest steghide cracker, chewing through millions of passwords per second ⚡  | - | `stegseek [stegofile.jpg] [wordlist.txt]` |
| [exiftool](https://exiftool.org/)  |  Read, Write and Edit Meta Information  | - | `exiftool file_name`  \\ read docs for more |
| [foremost](https://github.com/gerryamurphy/Foremost)  |  Foremost is a console program to recover files based on their headers, footers, and internal data structures   | - | `foremost file_name` |

### Images

| Tools | Description | File types | Usage |
| --- |---|---| --- |
| [zteg](https://github.com/zed-0xff/zsteg)  |  detect stegano-hidden data in PNG & BMP  | `PNG`, `BMP` | `zsteg --all file_name` |
| [pngcheck](https://pmt.sourceforge.io/pngcrush/)  |  Verifies the integrity of PNG, JNG and MNG files  | `PNG`, `JNG`, `MNG` | `pngcheck file_name.png` |
| [stegsolve](https://github.com/Giotino/stegsolve)  |  Interactive stegano solver  | Images | `pngcheck file_name.png` |
| [imagemagick](https://imagemagick.org/)  | Software suite, used for editing and manipulating digital images | `JPEG`, `PNG`, `GIF`, `TIFF` and more | read docs |

### Audio

| Tools | Description | File types| Usage |
| --- |---|---| --- |
| [sonic-visualiser](https://sonicvisualiser.org/)  | Visualisation, analysis, and annotation of music audio recordings | Audio | read docs |

### Others

| Tools | Description | File types| Usage |
| --- |---|---| --- |
| [Ares](https://github.com/bee-san/Ares)  | Automated decoding of encrypted text without knowing the key or ciphers used | - | `ares -t 'encrypted_text' -d` |
| [lemmeknow](https://github.com/swanandx/lemmeknow)  | `lemmeknow` can be used for identifying mysterious text or to analyze hard-coded strings from captured network packets, malwares, or just about anything | - | `lemmeknow file_name` |

### 🗒️ Credits

### 🎨 Inspiration

I was inspired by:

- [DominicBreuker](https://github.com/DominicBreuker/stego-toolkit)
