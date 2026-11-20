{
  pkgs,
  ...
}:

{
  documentation.dev.enable = true;

  documentation.man = {
    enable = true;
    man-db.enable = true;
  };

  environment.systemPackages = with pkgs; [
    man-pages
    man-pages-posix
  ];
}
