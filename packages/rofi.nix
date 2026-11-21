{
  pkgs,
  ...
}:

{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi;
    plugins = with pkgs; [
      rofi-calc
      rofi-emoji
    ];
    modes = [
      "drun"
      "calc"
      "emoji"
    ];
    font = "FiraCode Nerd Font";
    theme = "Monokai";
  };
}
