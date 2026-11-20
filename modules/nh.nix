{
  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 7d --keep 10";
    flake = "/etc/nixos";
  };
}
