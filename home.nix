{ config, pkgs, ... }:

{
  home.username = "mmk";
  home.homeDirectory = "/home/mmk";

  # basic configuration of git, please change to your own
  programs.git = {
    enable = true;
    userName = "Mahdi Khosravi";
    userEmail = "mmk1776@gmail.com";
  };

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    # archives
    zip
    unzip

    # utils
    # ripgrep # recursively searches directories for a regex pattern
    # fzf # A command-line fuzzy finder

    # misc
    which
    tree
    
    # browsers
    microsoft-edge

    vscode
  ];

  programs.bash = {
    enable = true;
    enableCompletion = true;
    # TODO add your cusotm bashrc here
    bashrcExtra = ''
      export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
    '';

    shellAliases = {
      k = "kubectl";
    };
  };

  home.stateVersion = "23.11";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}
