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
    ./modules/display.nix
    ./modules/print.nix
    ./modules/storage.nix
    ./packages/fish.nix
    ./packages/man.nix
    ./packages/nano.nix
    ./packages/nh.nix
  ];

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.extraModprobeConfig = ''
    options thinkpad_acpi fan_control=1
  '';

  networking.hostName = "icarus";
  networking.networkmanager.enable = true;

  time.timeZone = "America/Los_Angeles";

  users.users.dylanbt = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
  programs.dconf.enable = true;
  programs.ssh.startAgent = true;
  programs.direnv = {
    enable = true;
    enableFishIntegration = true;
    nix-direnv.enable = true;
  };

  environment.sessionVariables = {
    NIX_REMOTE = "daemon";
  };
  environment.systemPackages = with pkgs; [
    inputs.helium-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    bat
    btop
    discord
    tree
    kitty
    neovim
    vim
    waybar
    git
    hyprpaper
    hyprshutdown
    hyprlock
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
    asciiquarium
    nyancat
    cl-wordle
    platformio
    direnv
    nix-direnv
    ponysay
    bibata-cursors
    asmfmt
  ];

  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      fira-code
      fira-code-symbols
    ];
    fontconfig.defaultFonts = {
      sansSerif = [ "Fira Code" ];
      monospace = [ "Fira Code" ];
    };
  };

  system.stateVersion = "26.05";
}
