{
  programs = {
    fish = {
      enable = true;
      shellAliases = {
        c = "cargo";
        g = "git";
        n = "nix";
        swtch = "sudo nixos-rebuild switch --flake ~/nix-config --impure";
      };
      shellInit = ''
        set --universal fish_greeting
        set --universal fish_color_valid_path
      '';
    };
  };
}
