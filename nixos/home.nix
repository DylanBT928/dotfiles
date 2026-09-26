{ config, pkgs, ... }:

let
  widevineVer = pkgs.widevine-cdm.version;
in
{
  home.username = "dylanbt";
  home.homeDirectory = "/home/dylanbt";
  home.stateVersion = "26.05";

  home.file.".config/hypr".source = ./config/hypr;
  home.file.".config/waybar".source = ./config/waybar;
  home.file.".config/nvim".source = ./config/nvim;
  home.file.".config/kitty".source = ./config/kitty;
  home.file.".config/mako".source = ./config/mako;
  home.file.".config/fish".source = ./config/fish;
  home.file.".config/net.imput.helium/WidevineCdm/${widevineVer}".source =
    "${pkgs.widevine-cdm}/share/google/chrome/WidevineCdm";
  home.file.".config/net.imput.helium/WidevineCdm/manifest.json".source =
    "${pkgs.widevine-cdm}/share/google/chrome/WidevineCdm/manifest.json";
}
