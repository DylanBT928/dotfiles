{
  pkgs,
  ...
}:

{
  imports = [
    ./packages/fastfetch.nix
    ./packages/hyprland.nix
    ./packages/mako.nix
    ./packages/waybar.nix
    ./packages/yazi.nix
    ./packages/zathura.nix
  ];

  home.username = "dylanbt";
  home.homeDirectory = "/home/dylanbt";
  home.stateVersion = "26.05";

  gtk = {
    enable = true;
    theme = {
      name = "adw-gtk3-dark";
      package = pkgs.adw-gtk3;
    };
    font = {
      name = "FiraCode Nerd Font";
      size = 12;
    };
  };

  home.file.".config/nvim".source = ./nvim;
  home.file.".config/net.imput.helium/WidevineCdm/${pkgs.widevine-cdm.version}".source =
    "${pkgs.widevine-cdm}/share/google/chrome/WidevineCdm";
  home.file.".config/net.imput.helium/WidevineCdm/manifest.json".source =
    "${pkgs.widevine-cdm}/share/google/chrome/WidevineCdm/manifest.json";
}
