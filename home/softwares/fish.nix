{
  programs = {
    fish = {
      enable = true;
      shellAbbrs = {
        switch = "sudo nixos-rebuild switch --flake ~/nix-configs --impure";
      };
      shellAliases = {
        c = "cargo";
        g = "git";
        n = "nix";
      };
    };
  };
}
