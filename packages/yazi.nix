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
            mime = "image/*";
            use = "pdf";
          }
          {
            mime = "image/gif";
            use = "mpv";
          }
          {
            mime = "video/*";
            use = "mpv";
          }
        ];
      };
    };
  };
}
