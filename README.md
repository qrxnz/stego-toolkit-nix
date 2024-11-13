# stego-toolkit-nix

## ✒️ Description
> The finest collection of steganography tools. - You like Docker? You love Nix ❤️ 

stego-toolkit-nix is a tool inspired by Dominic Breuker's `stego-toolkit`. By utilizing nix, stego-toolkit-nix offers greater flexibility, resulting in an improved user experience

## 📖 Usage

If you have Nix installed with `experimental features` and `flakes` support activated, the first step is to clone the repository

```sh
https://github.com/qrxnz/stego-toolkit-nix.git
```
In the 'stego-toolkit-nix' directory, use the command `nix develop` or if you are using `direnv`, use the command `direnv allow`

Done! You can start using the tools. Below you will find a list and instructions

## 🧰 Tools
> \[!IMPORTANT\]
> New tools will soon be on the list

### Basic

| Tools | Description | Example usage |
| --- |---|---|
| file | Identify file type  | file file_name  |
| [hexyl](https://github.com/sharkdp/hexyl)  |  A command-line hex viewer   | `hexyl file_name`  |
| ffmpeg  | aaa  | `ffmpeg -v info -i stego.mp3 -f null -` \ read docs for more |
| [steghide](https://steghide.sourceforge.net/)  | Steghide is a steganography program that is able to hide data in various kinds of image and audio files |  `steghide extract -sf file_name` \ read docs for more  |
| [exiftool](https://exiftool.org/)  |  Read, Write and Edit Meta Information  | `exiftool file_name`  \ read docs for more |

### Images

| Tools | Description | Example usage |
| --- |---|---|
| [imagemagick](https://imagemagick.org/)  | Software suite, used for editing and manipulating digital images  | read docs |

### Video

### Audio

### Others

### 🗒️ Credits

### 🎨 Inspiration

I was inspired by:

- [DominicBreuker](https://github.com/DominicBreuker/stego-toolkit)
