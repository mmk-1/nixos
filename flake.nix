{
  description = "My Nix Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim.url = "github:nix-community/nixvim";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    inherit (self) outputs;
    system = "x86_64-linux";
    username = "mmk";
    hostname = "legion";
  in {
    defaultPackage.x86_64-linux = home-manager.defaultPackage.x86_64-linux;

    # Here: NixOS configurations

    # Home-manager configurations
    homeConfigurations = {
      "${username}@${hostname}" = home-manager.lib.homeManagerConfiguration {
        # pkgs = import nixpkgs { system = "x86_64-linux"; };
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        modules = [./hosts/legion/home.nix];
        extraSpecialArgs = {inherit inputs outputs;};
      };
    };
  };
}
