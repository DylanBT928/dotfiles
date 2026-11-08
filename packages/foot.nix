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
        alpha = "0.8";
      };
      scrollback = {
        multiplier = "10.0";
      };
    };
  };
}
