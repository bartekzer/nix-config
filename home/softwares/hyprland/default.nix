{
  wayland = {
    windowManager = {
      hyprland = {
        enable = true;
        settings = {
          exec-once = [
            "nm-applet"
            "blueman-applet"
          ];
        };
        extraConfig = builtins.readFile ./hyprland.conf;
      };
    };
  };
}
