{ pkgs
, inputs
, lib
, ...
}: {
  imports = [
    ../../home-manager
  ];

  home = {
    username = "mmk";
    homeDirectory = "/home/mmk";
    stateVersion = "23.11";
  };
}
