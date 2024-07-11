{
  programs = {
    mpv = {
      enable = true;
      defaultProfiles = [
        "high-quality"
      ];
      config = {
        gpu-context = "wayland";
        video-sync = "display-resample";
        interpolation = "yes";
        hwdec = "auto";
      };
    };
  };
}
