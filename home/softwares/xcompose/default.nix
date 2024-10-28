{
  programs.xcompose = {
    enable = true;
    includeLocaleCompose = true;
    loadConfigInEnv = false;
    extraConfig = builtins.readFile ./xcompose.conf;
  };
}
