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
      discord
      vscode
    ];
    sessionVariables = {
      EDITOR = "vide";
      SYSTEMD_EDITOR = "vide";
      VISUAL = "vide";
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
