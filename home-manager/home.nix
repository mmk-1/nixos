{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    # nvim
  ];

  nixpkgs = {
    overlays = [
      # Don't have any 
    ];

    config = {
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = _: true;
    };
  };

  # TODO: Set your username
  home = {
    username = "mmk";
    homeDirectory = "/home/mmk";
  };

  # Add stuff for your user as you see fit:
  home.packages = with pkgs; [
    # archives
    zip
    unzip

    # utils
    ripgrep
    fzf

    # misc
    which
    tree
    
    # browsers
    # microsoft-edge
    
    # Editors
    # vscode
    neovim
  ];

  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git = {
    enable = true;
    userName = "Mahdi Khosravi";
    userEmail = "mmk1776@gmail.com";
  };

  # Nicely reload system units when changing configs
  # systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.11";
}
