{
  networking = {
    nameservers = [
      "1.1.1.1#one.one.one.one"
      "1.0.0.1#one.one.one.one"
      "2606:4700:4700::1111#one.one.one.one"
      "2606:4700:4700::1001#one.one.one.one"
    ];
    dhcpcd = {
      extraConfig = "nohook resolv.conf";
    };
    networkmanager = {
      dns = "systemd-resolved";
    };
  };

  services = {
    resolved = {
      enable = true;
      dnssec = "true";
      domains = [ "~." ];
      fallbackDns = [ ];
      dnsovertls = "true";
    };
  };
}
