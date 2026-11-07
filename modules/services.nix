{
  pkgs,
  ...
}:

{
  services.xserver.enable = false;
  services.displayManager.ly.enable = true;
  services.libinput.enable = true;
  services.udisks2.enable = true;
  services.devmon.enable = true;
  services.pulseaudio.enable = false;
  services.fprintd.enable = true;

  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };

  services.printing = {
    enable = true;
    drivers = with pkgs; [
      cups-filters
      cups-browsed
    ];
  };

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

}
