# GEMINI.md

## Project Overview

This is a Nix-based project called `stego-toolkit-nix`. Its primary purpose is to provide a reproducible development environment (via Nix Flakes) that comes pre-packaged with a comprehensive collection of tools for steganography analysis.

The project is structured as a Nix Flake template. The root `flake.nix` sets up a template and a formatting environment, while the `stego-toolkit/flake.nix` defines the core `devShell` containing all the necessary steganography tools.

**Key Technologies:**
*   **Nix:** For package management and creating a reproducible environment.
*   **Nix Flakes:** For project structure and dependency management.

## Building and Running

To use this project, you need to have Nix installed with Flakes enabled.

1.  **Initialize the project from the template:**
    ```sh
    nix flake init -t github:qrxnz/stego-toolkit-nix
    ```

2.  **Activate the development environment:**
    Navigate into the newly created `stego-toolkit-nix` directory and run:
    ```sh
    nix develop
    ```
    Alternatively, if you have `direnv` installed and configured, you can simply run:
    ```sh
    direnv allow
    ```

Once the environment is activated, all the tools listed in the `stego-toolkit/flake.nix` file will be available in your shell.

## Development Conventions

The project uses formatting tools to maintain a consistent code style. These are defined in the root `flake.nix` and can be run using `treefmt`.

*   **Nix code formatting:** `alejandra`
*   **Markdown formatting:** `mdformat`

## Key Files

*   `README.md`: Provides a high-level overview of the project, its purpose, and a list of the included tools with basic usage examples.
*   `flake.nix`: The main Nix Flake file. It defines the project's structure, templates, and a development shell with formatting tools.
*   `stego-toolkit/flake.nix`: This is the core of the project, defining the `devShell` that includes all the steganography tools. The `buildInputs` list in this file specifies the exact tools that will be available in the environment.
