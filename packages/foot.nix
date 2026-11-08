{
  pkgs,
  ...
}:

{
  programs.foot = {
    enable = true;
    settings = {
      main = {
        shell = "fish";
        font = "FiraCode Nerd Font:size=12";
      };
      colors-dark = {
        alpha = "0.9";
        blur = true;
      };
      scrollback = {
        multiplier = "10.0";
      };
    };
  };
}
