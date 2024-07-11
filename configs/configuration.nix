{
  imports = [
    ./hardware-configuration.nix
    ../nixos
  ];

  networking = {
    hostName = "rog";
  };

  system = {
    stateVersion = "24.05";
  };
}
