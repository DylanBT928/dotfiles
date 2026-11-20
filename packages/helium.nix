{
  pkgs,
  ...
}:

{
  home.file.".config/net.imput.helium/WidevineCdm/${pkgs.widevine-cdm.version}".source =
    "${pkgs.widevine-cdm}/share/google/chrome/WidevineCdm";
  home.file.".config/net.imput.helium/WidevineCdm/manifest.json".source =
    "${pkgs.widevine-cdm}/share/google/chrome/WidevineCdm/manifest.json";
}
