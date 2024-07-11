{ lib, ... }:

{
  boot = {
    kernel = {
      sysctl = {
        "vm.max_map_count" = 2147483642;
      };
    };
  };

  fileSystems = {
    "/" = {
      options = [ "noatime" ];
    };
  };

  services = {
    thermald = {
      enable = true;
    };
    auto-cpufreq = {
      enable = true;
    };
    tlp = {
      enable = lib.mkForce false;
    };
    power-profiles-daemon = {
      enable = lib.mkForce false;
    };
  };
}
