{
  pkgs,
  ...
}:

{
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

  home.file.".config/hypr".source = ./config/hypr;
  home.file.".config/waybar".source = ./config/waybar;
  home.file.".config/nvim".source = ./config/nvim;
  home.file.".config/mako".source = ./config/mako;
  home.file.".config/zathura".source = ./config/zathura;
  home.file.".config/net.imput.helium/WidevineCdm/${pkgs.widevine-cdm.version}".source =
    "${pkgs.widevine-cdm}/share/google/chrome/WidevineCdm";
  home.file.".config/net.imput.helium/WidevineCdm/manifest.json".source =
    "${pkgs.widevine-cdm}/share/google/chrome/WidevineCdm/manifest.json";
}
