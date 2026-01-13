{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/system/boot.nix
    ../../modules/system/networking.nix
    ../../modules/system/users.nix
    ../../modules/desktop/hyprland.nix
  ];

  system.stateVersion = "25.11";
}
