{
  inputs,
  lib,
  pkgs,
  ...
}: {
  # home.homedire

  imports = [
    inputs.nixvim.homeManagerModules.nixvim

    ./nvim

    ./shell/xdg.nix
    ./shell/zsh.nix
  ];

  programs.home-manager.enable = true;

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

  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    ## Gui (I won't install gui stuff on non-NixOS for now##
    # obsidian
    # bitwarden
    # discord
    ## QT and AppImages don't work on non-nixos
    # todoist-electron
    # dropbox
    # sioyek

    ## cmdline utils ##
    fd
    ripgrep
    rustup

    # Fonts
    (nerdfonts.override {fonts = ["JetBrainsMono" "FiraCode"];})
  ];

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
}
