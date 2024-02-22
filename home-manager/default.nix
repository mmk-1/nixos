{ inputs
, lib
, pkgs
, ...
}: {

  imports = [
    inputs.nixvim.homeManagerModules.nixvim

    ./nvim
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
    # obsidian
    # dropbox
    # sioyek
    # bitwarden
  ];
}
