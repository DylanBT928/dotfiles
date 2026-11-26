{
  pkgs,
  ...
}:
{
  home-manager.users.dylanbt.programs.btop.package = pkgs.btop.override {
    rocmSupport = true;
  };
}
