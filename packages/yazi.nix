{
  programs.yazi = {
    enable = true;
    settings = {
      opener = {
        pdf = [
          {
            run = ''zathura "$@"'';
            orphan = true;
          }
        ];
        mpv = [
          {
            run = ''mpv "$@"'';
            orphan = true;
          }
        ];
      };
      open = {
        prepend_rules = [
          {
            mime = "application/pdf";
            use = "pdf";
          }
          {
            mime = "application/epub+zip";
            use = "pdf";
          }
          {
            url = "*.cbz";
            use = "pdf";
          }
          {
            mime = "video/*";
            use = "mpv";
          }
          {
            mime = "image/gif";
            use = "mpv";
          }
          {
            mime = "image/*";
            use = "pdf";
          }
        ];
      };
    };
  };
}
