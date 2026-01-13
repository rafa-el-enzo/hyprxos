{
  description = "Mi configuración NixOS mínima con Hyprland y Home Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11"; # versión estable
    home-manager.url = "github:nix-community/home-manager";
  };

  outputs = { self, nixpkgs, home-manager }:
  let
    system = "x86_64-linux";
  in {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      inherit system;
    modules = [
        ./hosts/nixos/configuration.nix
    ];

    };

    homeConfigurations.rafa-el-enzo = home-manager.lib.homeManagerConfiguration {
      inherit system;
      username = "rafa-el-enzo";
      homeDirectory = "/home/rafa-el-enzo";
      configuration = ./home/rafa-el-enzo/home.nix;
    };
  };
}
