{
  imports = [
    ./modules/graphics.nix
    ./packages/btop.nix
    ./hardware-configuration.nix
  ];

  networking.hostName = "apollo";
}
