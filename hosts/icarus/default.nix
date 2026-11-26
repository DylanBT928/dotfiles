{
  imports = [
    ./modules/boot.nix
    ./packages/btop.nix
    ./hardware-configuration.nix
  ];

  networking.hostName = "icarus";
}
