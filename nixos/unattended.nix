{ inputs, ... }:

{
  nix = {
    gc = {
      automatic = true;
    };
    optimise = {
      automatic = true;
    };
  };

  system = {
    autoUpgrade = {
      enable = true;
      flake = inputs.self.outPath;
    };
  };
}
