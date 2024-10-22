{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./modules
  ];

  home = {
    username = "lokasku";
    homeDirectory = "/home/lokasku";
    packages = with pkgs; [
      (pkgs.callPackage ./pragmata.nix {})
      inputs.vide.packages.${system}.vide
      anki-bin
      inter
      qbittorrent

      libappindicator
      networkmanagerapplet
    ];
    pointerCursor = {
      gtk.enable = true;
      x11.enable = true;
      package = pkgs.apple-cursor;
      name = "macOS";
      size = 24;
    };
    sessionVariables = {
      EDITOR = "vide";
      SYSTEMD_EDITOR = "vide";
      VISUAL = "vide";
    };
  };

  fonts = {
    fontconfig = {
      enable = true;
      defaultFonts = {
        serif = ["Liberation Serif"];
        sansSerif = ["Inter Display" "Liberation Sans"];
        monospace = ["PragmataPro Liga"];
      };
    };
  };

  programs = {
    home-manager = {
      enable = true;
    };
    brave = {
      enable = true;
    };
    direnv = {
      enable = true;
    };
  };
}
