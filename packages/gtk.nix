{
  pkgs,
  ...
}:

{
  gtk = {
    enable = true;
    theme = {
      name = "adw-gtk3-dark";
      package = pkgs.adw-gtk3;
    };
    font = {
      name = "FiraCode Nerd Font";
      size = 12;
    };
  };
}
