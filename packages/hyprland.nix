{
  pkgs,
  ...
}:

let
  mainMod = "SUPER";
  terminal = "foot";
  fileManager = "foot -e yazi";
  menu = "rofi -show drun";
  browser = "helium";
in
{
  wayland.windowManager.hyprland = {
    enable = true;
    configType = "hyprlang";
    settings = {
      monitor = [
        "eDP-1,1920x1200@60,0x0,1"
        "DP-1,1920x1080@180,1920x0,1"
        "HDMI-A-1,1920x1080@75,0x0,1"
      ];
      exec-once = [
        "waybar & mako"
        "swaybg -i /etc/nixos/assets/nvidia.png -m fill"
        "brightnessctl --device='*micmute*' set 0"
      ];
      env = [
        "XCURSOR_SIZE,20"
        "HYPRCURSOR_SIZE,20"
        "XCURSOR_THEME,Bibata-Modern-Classic"
        "HYPRCURSOR_THEME,Bibata-Modern-Classic"
        "GTK_THEME,adw-gtk3-dark"
      ];
      general = {
        gaps_in = 5;
        gaps_out = 10;
        border_size = 1;
        "col.active_border" = "rgba(ebdbb2ee)";
        "col.inactive_border" = "rgba(595959aa)";
        resize_on_border = false;
        allow_tearing = false;
        layout = "dwindle";
      };
      decoration = {
        rounding = 0;
        rounding_power = 0;
        active_opacity = 1.0;
        inactive_opacity = 1.0;
        shadow = {
          enabled = false;
        };
        blur = {
          enabled = true;
          size = 3;
          passes = 1;
          vibrancy = 0.1696;
        };
      };
      animations = {
        enabled = true;
        bezier = [
          "easeOutQuint, 0.23, 1, 0.32, 1"
          "easeInOutCubic, 0.65, 0.05, 0.36, 1"
          "linear, 0, 0, 1, 1"
          "almostLinear, 0.5, 0.5, 0.75, 1"
          "quick, 0.15, 0, 0.1, 1"
        ];
        animation = [
          "global, 1, 10, default"
          "border, 1, 5.39, easeOutQuint"
          "windows, 1, 4.79, easeOutQuint"
          "windowsIn, 1, 4.1, easeOutQuint, popin 87%"
          "windowsOut, 1, 1.49, linear, popin 87%"
          "fadeIn, 1, 1.73, almostLinear"
          "fadeOut, 1, 1.46, almostLinear"
          "fade, 1, 3.03, quick"
          "layers, 1, 3.81, easeOutQuint"
          "layersIn, 1, 4, easeOutQuint, fade"
          "layersOut, 1, 1.5, linear, fade"
          "fadeLayersIn, 1, 1.79, almostLinear"
          "fadeLayersOut, 1, 1.39, almostLinear"
          "workspaces, 1, 1.94, almostLinear, fade"
          "workspacesIn, 1, 1.21, almostLinear, fade"
          "workspacesOut, 1, 1.94, almostLinear, fade"
          "zoomFactor, 1, 7, quick"
        ];
      };
      dwindle = {
        preserve_split = true;
      };
      master = {
        new_status = "master";
      };
      scrolling = {
        fullscreen_on_one_column = true;
      };
      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };
      input = {
        kb_layout = "us";
        kb_variant = "";
        kb_model = "";
        kb_options = "";
        kb_rules = "";
        follow_mouse = 1;
        sensitivity = 0;
        touchpad = {
          natural_scroll = true;
          scroll_factor = 0.2;
        };
      };
      gesture = [
        "3, horizontal, workspace"
      ];
      device = [
        {
          name = "epic-mouse-v1";
          sensitivity = -0.5;
        }
      ];
      bind = [
        "${mainMod}, B, exec, ${browser}"
        "${mainMod}, D, exec, ${terminal}"
        "${mainMod}, E, exec, ${fileManager}"
        "${mainMod}, R, exec, ${menu}"
        "${mainMod}, T, exec, discord"
        "${mainMod}, N, exec, obsidian"
        "${mainMod}, G, exec, steam"
        "${mainMod}, Delete, exit"
        "${mainMod} SHIFT, Delete, exec, poweroff"

        "${mainMod}, Q, killactive,"
        "${mainMod}, V, togglefloating,"
        "${mainMod}, P, pseudo,"
        "${mainMod}, F, fullscreen, 0"

        "${mainMod}, H, movefocus, l"
        "${mainMod}, L, movefocus, r"
        "${mainMod}, K, movefocus, u"
        "${mainMod}, J, movefocus, d"
        "${mainMod}, left, movefocus, l"
        "${mainMod}, right, movefocus, r"
        "${mainMod}, up, movefocus, u"
        "${mainMod}, down, movefocus, d"

        "${mainMod} SHIFT, H, movewindoworgroup, l"
        "${mainMod} SHIFT, L, movewindoworgroup, r"
        "${mainMod} SHIFT, K, movewindoworgroup, u"
        "${mainMod} SHIFT, J, movewindoworgroup, d"
        "${mainMod} SHIFT, left, movewindoworgroup, l"
        "${mainMod} SHIFT, right, movewindoworgroup, r"
        "${mainMod} SHIFT, up, movewindoworgroup, u"
        "${mainMod} SHIFT, down, movewindoworgroup, d"

        "${mainMod}, 1, workspace, 1"
        "${mainMod}, 2, workspace, 2"
        "${mainMod}, 3, workspace, 3"
        "${mainMod}, 4, workspace, 4"
        "${mainMod}, 5, workspace, 5"
        "${mainMod}, 6, workspace, 6"
        "${mainMod}, 7, workspace, 7"
        "${mainMod}, 8, workspace, 8"
        "${mainMod}, 9, workspace, 9"
        "${mainMod}, 0, workspace, 10"

        "${mainMod} SHIFT, 1, movetoworkspace, 1"
        "${mainMod} SHIFT, 2, movetoworkspace, 2"
        "${mainMod} SHIFT, 3, movetoworkspace, 3"
        "${mainMod} SHIFT, 4, movetoworkspace, 4"
        "${mainMod} SHIFT, 5, movetoworkspace, 5"
        "${mainMod} SHIFT, 6, movetoworkspace, 6"
        "${mainMod} SHIFT, 7, movetoworkspace, 7"
        "${mainMod} SHIFT, 8, movetoworkspace, 8"
        "${mainMod} SHIFT, 9, movetoworkspace, 9"
        "${mainMod} SHIFT, 0, movetoworkspace, 10"

        "${mainMod}, A, togglespecialworkspace, magic"
        "${mainMod} SHIFT, A, movetoworkspace, special:magic"

        "${mainMod}, mouse_down, workspace, e+1"
        "${mainMod}, mouse_up, workspace, e-1"

        ", XF86AudioNext, exec, playerctl next"
        ", XF86AudioPause, exec, playerctl play-pause"
        ", XF86AudioPlay, exec, playerctl play-pause"
        ", XF86AudioPrev, exec, playerctl previous"

        "${mainMod} SHIFT, S, exec, grim -g \"$(slurp -d)\" - | tee ~/Pictures/Screenshots/screenshot_$(date +%Y-%m-%d_%H-%M-%S).png | wl-copy"
      ];
      bindm = [
        "${mainMod}, mouse:272, movewindow"
        "${mainMod}, mouse:273, resizewindow"
      ];
      bindel = [
        ", XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
        ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        ", XF86MonBrightnessUp, exec, brightnessctl -e4 -n2 set 5%+"
        ", XF86MonBrightnessDown, exec, brightnessctl -e4 -n2 set 5%-"
      ];
      bindl = [
        ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        ", XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle && (wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | grep -q MUTED && brightnessctl -d '*micmute*' set 1 || brightnessctl -d '*micmute*' set 0)"
      ];
      windowrule = [
        "match:class .*, suppress_event maximize"
        "match:class ^$, match:title ^$, match:xwayland 1, match:float 1, match:fullscreen 0, match:pin 0, no_initial_focus on"
        "match:class ^(hyprland-run)$, float on"
        "match:class ^(hyprland-run)$, move 20 monitor_h-120"
      ];
    };
  };

  home.packages = with pkgs; [
    brightnessctl
    grim
    playerctl
    slurp
    swaybg
    wl-clipboard
  ];
}
