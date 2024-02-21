{pkgs, ...}: {
  fonts = {
    enableDefaultPackages = false;
    fontDir.enable = true;
    packages = with pkgs; [
      (nerdfonts.override {fonts = ["JetBrainsMono"];})
    ];

    fontconfig = {
      antialias = true;
      defaultFonts = {
        serif = ["JetBrainsMono"];
        sansSerif = ["JetBrainsMono"];
        monospace = ["JetBrainsMono"];
        emoji = ["JetBrainsMono"];
      };
      enable = true;
      hinting = {
        autohint = false;
        enable = true;
        style = "slight";
      };
      subpixel = {
        rgba = "rgb";
        lcdfilter = "light";
      };
    };
  };
}
