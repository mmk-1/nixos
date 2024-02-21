{ pkgs, ... }: {
  home.username = "mmk";
  home.homeDirectory = "/home/mmk";
  home.stateVersion = "22.11";

  nixpkgs = {
    config = {
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      # allowUnfreePredicate = _: true;
      permittedInsecurePackages = [
        "electron-25.9.0"
      ];
    };
  };

  home.packages = with pkgs; [
    # obsidian
    # dropbox
    # sioyek
  ];

  programs.home-manager.enable = true;
}
