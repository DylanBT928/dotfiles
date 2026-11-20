{
  pkgs,
  ...
}:

{
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      nerd-fonts.fira-code
    ];
    fontconfig.defaultFonts = {
      sansSerif = [ "FiraCode Nerd Font" ];
      monospace = [ "FiraCode Nerd Font" ];
    };
  };

}
