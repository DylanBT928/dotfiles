{
  pkgs,
  osConfig,
  ...
}:
{
  programs.btop = {
    enable = true;
    package = pkgs.btop.override {
      cudaSupport = osConfig.networking.hostName == "apollo";
      rocmSupport = osConfig.networking.hostName == "icarus";
    };
  };
}
