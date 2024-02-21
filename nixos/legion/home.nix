{
  inputs,
  lib,
  config,
  pkgs,
  username,
  stateVersion,
  ...
}: 
{
  nixpkgs = {
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      # allowUnfreePredicate = _: true;
      };
  };
	home.username = "${username}";
	home.homeDirectory = "/home/${username}";
	home.stateVersion = stateVersion;
	programs.home-manager.enable = true;

	home.packages = with pkgs; [

	];
}