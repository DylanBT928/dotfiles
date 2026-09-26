{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
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

  services.xserver.enable = false;
  services.displayManager.ly.enable = true;
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };
  services.printing = {
    enable = true;
    drivers = with pkgs; [
      cups-filters
      cups-browsed
    ];
  };
  services.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };
  services.libinput.enable = true;
  services.udisks2.enable = true;
  services.devmon.enable = true;

  users.users.dylanbt = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
  programs.firefox.enable = false;
  programs.nano.enable = false;
  programs.dconf.enable = true;
  programs.ssh.startAgent = true;

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
    oh-my-posh
    fish
    fastfetch
    tree-sitter
    gcc
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
  ];

  fonts.packages = with pkgs; [
    fira-code
    fira-code-symbols
  ];

  system.stateVersion = "26.05";
}
