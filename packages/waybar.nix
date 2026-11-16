{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 28;
        spacing = 4;
        modules-left = [
          "hyprland/workspaces"
        ];
        modules-center = [
          "clock"
        ];
        modules-right = [
          "cpu"
          "memory"
          "network"
          "pulseaudio"
          "battery"
        ];
        clock = {
          format = "{:%A %b %d | %I:%M:%S %p}";
          interval = 1;
          tooltip-format = "<tt>{calendar}</tt>";
          calendar = {
            mode = "year";
            mode-mon-col = 4;
            format = {
              months = "<span color='#ffead3'><b>{}</b></span>";
              days = "<span color='#ecc6d9'><b>{}</b></span>";
              weeks = "<span color='#99ffdd'><b>W{}</b></span>";
              weekdays = "<span color='#ffcc66'><b>{}</b></span>";
              today = "<span color='#ff6699'><b><u>{}</u></b></span>";
            };
          };
        };
        cpu = {
          format = "CPU: {usage}%";
          interval = 10;
          tooltip = true;
        };
        memory = {
          format = "RAM: {used:0.1f}GiB";
          interval = 10;
          tooltip = true;
          tooltip-format = "RAM: {used:0.1f}GiB / {total:0.1f}GiB\nSwap: {swapUsed:0.1f}GiB / {swapTotal:0.1f}GiB";
        };
        network = {
          format-wifi = "NET: {bandwidthTotalBits}";
          format-ethernet = "NET: {bandwidthTotalBits}";
          format-disconnected = "DISCONNECTED";
          interval = 10;
          tooltip = false;
        };
        pulseaudio = {
          format = "VOL: {volume}%";
          format-muted = "MUTE";
          tooltip = false;
        };
        battery = {
          format = "BAT: {capacity}%";
          interval = 10;
          states = {
            critical = 20;
          };
        };
      };
    };
    style = ''
      * {
          font-family: 'FiraCode Nerd Font';
          font-size: 12px;
          border: none;
          margin: 0;
          padding: 0;
      }

      window#waybar {
          background: #1A1A1A;
          color: #E0E0E0;
          border-bottom: 1px solid #3A3A3A;
      }

      #workspaces {
          margin: 0;
          padding: 0;
      }

      #workspaces button {
          color: #e0e0e0;
          margin: 0;
          padding: 0 10px;
          border-radius: 0;
      }

      #workspaces button.active {
          background: #3a3a3a;
          color: #e0e0e0;
          border-radius: 0;
      }

      #workspaces button:hover {
          background: #3a3a3a;
          border-radius: 0;
      }

      #clock,
      #cpu,
      #memory,
      #network,
      #pulseaudio,
      #battery {
          color: #a4ada9;
          padding: 0 10px;
      }

      #battery.critical {
          color: #ff3333;
      }

      tooltip {
          background: #1a1a1a;
          border: 1px solid #3a3a3a;
          border-radius: 8px;
      }

      tooltip label {
          color: #e0e0e0;
          padding: 8px;
      }
    '';
  };
}
