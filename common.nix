{
  pkgs,
  ...
}:

{
  imports = [
    ./modules/audio.nix
    ./modules/bluetooth.nix
    ./modules/boot.nix
    ./modules/desktop.nix
    ./modules/direnv.nix
    ./modules/display.nix
    ./modules/fish.nix
    ./modules/fonts.nix
    ./modules/man.nix
    ./modules/nano.nix
    ./modules/networking.nix
    ./modules/nh.nix
    ./modules/nix.nix
    ./modules/print.nix
    ./modules/ssh.nix
    ./modules/steam.nix
    ./modules/storage.nix
    ./modules/time.nix
    ./modules/users.nix
  ];

  environment.systemPackages = with pkgs; [
    bat
    btop
    discord
    tree
    neovim
    vim
    git
    wget
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
    ponysay
    bibata-cursors
    asmfmt
    spotify
  ];

  system.stateVersion = "26.05";
}
