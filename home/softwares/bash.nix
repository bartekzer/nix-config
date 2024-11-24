{
  programs = {
    bash = {
      enable = true;
      historyIgnore = ["ls" "cd" "clear" "exit"];
      historyControl = ["ignoreboth"];
      shellAliases = {
        ll = "ls -l";
        swtch = "sudo nixos-rebuild switch --flake ~/nix-config --impure";
        ".." = "cd ..";
        "~" = "cd";
      };
    };
  };
}
