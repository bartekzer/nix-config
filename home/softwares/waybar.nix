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
            spacing = 13;
            icon-size = 26;
          };
          "hyprland/language" = {
            format = "{}";
            format-en = "en";
            format-fr = "fr";
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
          padding: 12px 12px;
        }

        window#waybar {
          background-color: transparent;
        }

        #workspaces {
          margin-left: 8px;
        }

        #workspaces button {
          font-size: 14px;
          color: #808080;
          margin: 0 6px;
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
        }

        #custom-date {
          color: #F38156;
        }

        #custom-battery {
          color: #AAA898;
          margin-right: 10px;
        }
      '';
    };
  };
}
