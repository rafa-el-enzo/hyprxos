{ config, pkgs, ... }:


{
  home.username = "rafa-el-enzo";
  home.homeDirectory = "/home/rafa-el-enzo";
  home.stateVersion = "25.11";

  programs.git = {
    enable = true;
    userName = "rafa-el-enzo";
    userEmail = "enzocamposar@gmail.com";
  }; 
   programs.micro.enable = true;

  home.packages = with pkgs; [
     waybar
     rofi
     fastfetch
     wl-clipboard
     grim
     slurp
     firefox
	 vscode     
    	
  ];

  programs.waybar.enable = true;
  programs.foot.enable = true;
  programs.firefox.enable = true;

  imports = [
    ./hyprland.nix
  ];







  programs.home-manager.enable = true;

	
}
