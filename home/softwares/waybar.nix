{
  programs = {
    waybar = {
      enable = true;
      systemd = {
        enable = true;
      };
      settings = [
        {
          layer = "top";
          position = "top";
          height = 20;
          output = ["eDP-1"];
          modules-left = [
            "hyprland/workspaces"
          ];
          modules-right = [
            "tray"
            "hyprland/language"
            "custom/date"
            "custom/battery"
          ];
          "hyprland/workspaces" = {
            format = "\\";
            all-outputs = true;
          };
          tray = {
            show-passive-items = true;
            reverse-direction = true;
            spacing = 2;
            icon-size = 26;
          };
          "hyprland/window" = {
            format = "";
            icon = true;
          };
          "hyprland/language" = {
            format = "{}";
            format-en = "en";
            format-fr = "fr";
          };
          "hyprland/submap" = {
            format = "{}";
            always-on = true;
          };
          "custom/battery" = {
            exec = "/home/lokasku/nix-config/home/scripts/battery.sh";
            interval = 60;
            format = "{}";
          };
          "custom/date" = {
            exec = "/home/lokasku/nix-config/home/scripts/date.sh";
            interval = 1;
            format = "{}";
          };
        }
      ];
      style = ''
        * {
          font-family: Inter;
          border: none;
          min-height: 0;
          font-size: 16px;
          font-weight: 500;
          text-shadow: none;
        }

        label.module {
          padding: 0 5px;
        }

		window#waybar {
          background-color: transparent;
        }

        #workspaces button {
          font-size: 14px;
          color: #808080;
          padding: 0;
        }

        #workspaces button.visible {
          color: #d6d6d6;
        }

        #workspaces button:hover {
          background-color: inherit;
        }

        #language, #custom-date, #custom-battery {
          font-family: PragmataPro Liga;
        }

        #language {
          color: #FD3DB5;
          margin-left: 10px;
        }

        #custom-date {
          color: #F38156;
          margin-left: 10px;
        }

        #custom-battery {
          color: #AAA898;
          margin-left: 10px;
        }
      '';
    };
  };
}
