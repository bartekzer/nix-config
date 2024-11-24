{pkgs, ...}: {
  users = {
    users = {
      lokasku = {
        isNormalUser = true;
        description = "Bartek";
        extraGroups = ["wheel" "networkmanager"];
        shell = pkgs.bash;
      };
    };
  };
  security.pam.services.hyprlock = {};
}
