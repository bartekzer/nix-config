{
  config,
  lib,
  pkgs,
  ...
}: let
  cfg = config.programs.xcompose;
in {
  options.programs.xcompose = with lib; {
    enable = mkEnableOption "XCompose keyboard configuration.";

    loadConfigInEnv = mkOption {
      default = true;
      type = types.bool;
    };

    includeLocaleCompose = mkOption {
      default = false;
      type = types.bool;
    };

    sequences = mkOption {
      default = {};
      type = types.anything;
    };

    extraConfig = mkOption {
      default = "";
      type = types.lines;
    };
  };

  config = with lib; let
    comboListToString = foldl (acc: val: acc + "<${val}> ") "";
    sanitizeComboResult = escape [''"''];

    comboSetToList = ip:
      flatten (mapAttrsToList
        (
          name: value:
            if isAttrs value
            then let
              vs = comboSetToList value;
            in
              map ({
                combo,
                value,
              }: {
                combo = [name] ++ combo;
                inherit value;
              })
              vs
            else if isString value
            then {
              combo = [name];
              inherit value;
            }
            else throw "Combo value must be a string."
        )
        ip);
    complexListToSimple = map ({
      combo,
      value,
    }: {
      combo = comboListToString combo;
      value = sanitizeComboResult value;
    });
    toComposeFile = foldl (acc: val: acc + "${val.combo}: \"${val.value}\"\n") "";

    processComposeSet = set: toComposeFile (complexListToSimple (comboSetToList set));

    # TODO: see if include changes if put after compose declarations
    composeFile = pkgs.writeText "XCompose" ''
      ${optionalString cfg.includeLocaleCompose "include \"%L\""}
      ${processComposeSet cfg.sequences}
      ${cfg.extraConfig}
    '';
  in
    mkIf cfg.enable {
      home.sessionVariables = mkIf cfg.loadConfigInEnv {XCOMPOSEFILE = composeFile;};
      home.file = mkIf (!cfg.loadConfigInEnv) {".XCompose".source = composeFile;};
    };
}
