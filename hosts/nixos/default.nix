{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  networking.hostName = "nixos";

  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;

  home-manager.users.rafa-el-enzo =
    import ../../home/rafa-el-enzo/home.nix;

  system.stateVersion = "25.11";
}
