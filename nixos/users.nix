{ pkgs, ... }:

{
  users = {
    users = {
      lokasku = {
        isNormalUser = true;
        description = "Lokasku";
        extraGroups = [ "wheel" "networkmanager" ];
        shell = pkgs.fish;
      };
    };
  };
}
