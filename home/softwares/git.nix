{ pkgs, ... }:

{
  programs = {
    git = {
      enable = true;
      package = pkgs.gitFull;
      userName = "Lokasku";
      userEmail = "lukasku@proton.me";
      ignores = [ "*.swp" ];
      aliases = {
        c = "commit -m";
        a = "add";
        ps = "push";
        pl = "pull";
        co = "checkout";
        cl = "clone";
        b = "branch";
      };
      extraConfig = {
        init = {
          defaultBranch = "main";
        };
        core = {
          editor = "vide";
        };
        credential = {
          helper = "store";
        };
      };
    };
  };
}
