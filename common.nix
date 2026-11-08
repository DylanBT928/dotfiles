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
    ./modules/display.nix
    ./modules/print.nix
    ./modules/storage.nix
    ./packages/direnv.nix
    ./packages/fish.nix
    ./packages/foot.nix
    ./packages/man.nix
    ./packages/nano.nix
    ./packages/nh.nix
    ./packages/steam.nix
  ];

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  networking.hostName = "icarus";
  networking.networkmanager.enable = true;

  time.timeZone = "America/Los_Angeles";

  users.users.dylanbt = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  programs.dconf.enable = true;
  programs.ssh.startAgent = true;

    environment.pathsToLink = [
        "/share/applications"
        "/share/xdg-desktop-portal"
    ];

  environment.systemPackages = with pkgs; [
    inputs.helium-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    bat
    btop
    discord
    tree
    neovim
    vim
    waybar
    git
    wget
    rofi
    fastfetch
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
    grim
    slurp
    mako
    wl-clipboard
    obsidian
    widevine-cdm
    lazygit
    brightnessctl
    mpv
    yazi
    zathura
    adwaita-icon-theme
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

  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      nerd-fonts.fira-code
    ];
    fontconfig.defaultFonts = {
      sansSerif = [ "FiraCode Nerd Font" ];
      monospace = [ "FiraCode Nerd Font" ];
    };
  };

  system.stateVersion = "26.05";
}
