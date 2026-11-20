{
  config,
  lib,
  inputs,
  pkgs,
  ...
}:

{
  imports = [
    ./modules/audio.nix
    ./modules/bluetooth.nix
    ./modules/boot.nix
    ./modules/desktop.nix
    ./modules/display.nix
    ./modules/fish.nix
    ./modules/fonts.nix
    ./modules/networking.nix
    ./modules/nix.nix
    ./modules/print.nix
    ./modules/ssh.nix
    ./modules/storage.nix
    ./modules/time.nix
    ./modules/users.nix

    ./packages/direnv.nix
    ./packages/fish.nix
    ./packages/foot.nix
    ./packages/man.nix
    ./packages/nano.nix
    ./packages/nh.nix
    ./packages/steam.nix
  ];

  environment.systemPackages = with pkgs; [
    inputs.helium-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    bat
    btop
    discord
    tree
    neovim
    vim
    git
    wget
    rofi
    tree-sitter
    gcc
    gdb
    clang-tools
    pyright
    bash-language-server
    vscode-langservers-extracted
    lua-language-server
    nixd
    nixfmt
    obsidian
    widevine-cdm
    lazygit
    mpv
    adw-gtk3
    conda
    cmake
    gnumake
    valgrind
    unzip
    ruff
    nyancat
    cl-wordle
    platformio
    ponysay
    bibata-cursors
    asmfmt
    spotify
  ];

  system.stateVersion = "26.05";
}
