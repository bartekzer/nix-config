{
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./graphical.nix
    ./locale.nix
    ./users.nix
    ./optimization.nix
    ./unattended.nix
    ./dns.nix
  ];

  hardware = {
    enableAllFirmware = true;
    bluetooth = {
      enable = true;
    };
    /*
      pulseaudio = {
      enable = lib.mkForce ;
    };
    */
    nvidia = {
      dynamicBoost = {
        enable = lib.mkForce false;
      };
    };
  };

  boot = {
    loader = {
      systemd-boot = {
        enable = true;
        configurationLimit = 10;
      };
      efi = {
        canTouchEfiVariables = true;
      };
    };
  };

  security = {
    rtkit = {
      enable = true;
    };
    polkit = {
      enable = true;
    };
  };

  nix = {
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  services = {
    fwupd = {
      enable = true;
    };
    pipewire = {
      enable = true;
      alsa = {
        enable = true;
      };
      pulse = {
        enable = true;
      };
    };
    blueman = {
      enable = true;
    };
    printing = {
      enable = true;
    };
  };

  networking = {
    networkmanager = {
      enable = true;
    };
  };

  environment = {
    systemPackages = with pkgs; [
      brightnessctl
    ];
    sessionVariables = {
      NIXOS_OZONE_WL = "1";
    };
  };
}
