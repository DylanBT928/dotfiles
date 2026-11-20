{
  imports = [
    ./modules/graphics.nix
    ./hardware-configuration.nix
  ];

  networking.hostName = "apollo";
}
