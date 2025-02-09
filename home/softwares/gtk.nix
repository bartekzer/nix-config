{pkgs, ...}: {
  gtk = {
    enable = true;
    theme = {
      package = pkgs.whitesur-gtk-theme;
      name = "WhiteSur-Dark";
    };
    iconTheme = {
      package = pkgs.whitesur-icon-theme.overrideAttrs (oldAttrs: {
        preFixup = (oldAttrs.preFixup or "") + ''
          rm $out/share/icons/WhiteSur-dark/actions/32/folder.svg
          rm $out/share/icons/WhiteSur/actions/32/folder.svg

          rm $out/share/icons/WhiteSur-light/status/22/notification-display-brightness.svg
          rm $out/share/icons/WhiteSur/status/22/notification-display-brightness.svg
        '';
        });
      name = "WhiteSur-dark";
    };
  };
}
