{ pkgs, inputs, ... }:

{
  imports = [
    ./softwares
  ];

  home = {
    username = "lokasku";
    homeDirectory = "/home/lokasku";
    packages = with pkgs; [
      (pkgs.callPackage ./pragmata.nix { })
      inputs.vide.packages.${system}.vide
      anki-bin
      inter
      qbittorrent
      texliveTeTeX
    ];
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
        serif = [ "Liberation Serif" ];
        sansSerif = [ "Inter Display" "Liberation Sans" ];
        monospace = [ "PragmataPro Liga" ];
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
