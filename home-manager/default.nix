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

  home.packages = with pkgs; [
    ## Gui ##
    obsidian
    bitwarden
    discord
    ## QT and AppImages don't work on non-nixos
    # todoist-electron
    # dropbox
    # sioyek

    ## cmdline utils ##
    fd
    ripgrep

    # Langs
    rustup
  ];

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
}
