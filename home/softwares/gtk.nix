{ pkgs, ... }:
  {
    gtk = {
      enable = true;
      theme = {
        name = "WhiteSur-Dark";
        package = pkgs.whitesur-gtk-theme;
      };
      iconTheme = {
        package = pkgs.whitesur-icon-theme;
        name = "WhiteSur-dark";
      };
    };
  }
