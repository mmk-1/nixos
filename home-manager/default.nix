{ inputs
, lib
, pkgs
, ...
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
    sioyek
    bitwarden
    discord
    # todoist-electron
    # dropbox

    ## cmdline utils ##
    fd
    ripgrep
  ];

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
}
