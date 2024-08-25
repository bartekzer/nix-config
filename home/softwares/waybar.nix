{
  programs = {
    waybar = {
      enable = true;
      systemd = {
        enable = true;
      };
      settings = [{
        layer = "top";
        position = "top";
        height = 20;
        output = [ "eDP-1" ];
        modules-left = [ "hyprland/workspaces" ];
        "hyprland/workspaces" = {
          format = "\\";
          all-outputs = true;
        };
        "hyprland/window" = {
          format = "{initialTitle}";
          rewrite = {
            "(.*) - Brave" = "Brave";
          };
        };
        "hyprland/language" = {
          format = "{}";
          format-en = "EN";
          format-fr = "FR";
        };
        "backlight" = {
          device = "intel_backlight";
          format = "percent";
        };
      }];
      style = ''
        * {
            background-color: transparent;
            margin: 1px 5px 1px 3px;
        }

        #workspaces button {
            font-family: "PragmataPro Liga";
            font-size: 14px;
            color: #808080;
            padding: 0;
            margin-right: 12px;
        }

        #workspaces button.visible {
            color: #d6d6d6;
        }

        #workspaces button.empty {
            color: cyan;
        }

        #window {
            font-size: 15px;
        }

        #language {
            font-weight: bold;
            color: #d6d6d6;
        }
      '';
    };
  };
}
