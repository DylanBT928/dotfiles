{
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        source = "nixos_small";
        padding = {
          right = 2;
        };
      };
      display = {
        separator = "  ";
        color = {
          keys = "cyan";
          title = "magenta";
        };
        key = {
          type = "string";
          alignment = "right";
        };
      };
      modules = [
        "title"
        "separator"
        {
          type = "os";
          key = "os";
        }
        {
          type = "kernel";
          key = "kernel";
        }
        {
          type = "uptime";
          key = "uptime";
        }
        {
          type = "shell";
          key = "shell";
        }
        {
          type = "packages";
          key = "pkgs";
        }
      ];
    };
  };
}
