{
  imports = [
    ./modules/boot.nix
    ./hardware-configuration.nix
  ];

  networking.hostName = "icarus";
}
