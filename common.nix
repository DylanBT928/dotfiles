{
  imports = [
    ./modules/audio.nix
    ./modules/bluetooth.nix
    ./modules/boot.nix
    ./modules/desktop.nix
    ./modules/direnv.nix
    ./modules/display.nix
    ./modules/fish.nix
    ./modules/fonts.nix
    ./modules/man.nix
    ./modules/nano.nix
    ./modules/networking.nix
    ./modules/nh.nix
    ./modules/nix.nix
    ./modules/print.nix
    ./modules/ssh.nix
    ./modules/steam.nix
    ./modules/storage.nix
    ./modules/system.nix
    ./modules/time.nix
    ./modules/users.nix
  ];

  system.stateVersion = "26.05";
}
