{pkgs, ...}: {
  programs = {
    hyprland = {
      enable = true;
    };
  };

  services = {
    displayManager = {
      sddm = {
        enable = true;
        wayland = {
          enable = true;
        };
      };
    };
  };
}
