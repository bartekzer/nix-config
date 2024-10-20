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
        modules-right = [
          "tray"
          "battery"
        ];
        "hyprland/workspaces" = {
          format = "\\";
          all-outputs = true;
        };
        tray = {
          show-passive-items = true;
          reverse-direction = true;
          spacing = 4;
          icon-size = 26;
        };
        battery = {
          states = {
            low = 20;
            critical = 5;
          };
          format = "{icon}";
          format-icons = [
            "⠄⠀"
            "⠆⠀"
            "⠦⠀"
            "⠶⠀"
            "⠶⠄"
            "⠶⠆"
            "⠶⠦"
            "⠶⠶"
          ];
       };
        "hyprland/language" = {
          format = "{}";
          format-en = "EN";
          format-fr = "FR";
        };
      }];
      style = ''
        * {
          margin: 1px 5px 1px 3px;
          border: none;
          min-height: 0;
          font-family: "Inter";
          font-size: 15px;
          font-weight: 500;
          text-shadow: none;
        }

        window#waybar {
          font-family: "PragmataPro Liga";
          background-color: transparent;
        }

        tooltip {
          background-color: #3a3a3a;
        }

        #workspaces button {
          font-size: 14px;
          color: #808080;
          padding: 0;
          margin-right: 12px;
        }

        #workspaces button.visible {
            color: #d6d6d6;
        }

        #workspaces button:hover {
          background-color: inherit;
        }

        #language {
          font-weight: bold;
          color: #d6d6d6;
        }
      '';
    };
  };
}
