{
  programs = {
    bash = {
      enable = true;
      historyIgnore = ["ls" "cd" "clear" "exit"];
      historyControl = ["ignoreboth"];
      shellAliases = {
        ll = "ls -l";
        j = ''lrk add --title "$(date +"%d %B %Y")" --tags "journal" | xargs -o nano --minibar +5'';
        swtch = "sudo nixos-rebuild switch --flake ~/nix-config --impure";
        ".." = "cd ..";
        "~" = "cd";
      };
    };
  };
}
