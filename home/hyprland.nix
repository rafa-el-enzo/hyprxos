{ pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
      # Variables
      "$mod" = "SUPER";

      # Teclado (Wayland real)
      input = {
        kb_layout = "latam";
      };

      # General
      general = {
        gaps_in = 5;
        gaps_out = 10;
        border_size = 2;
      };

      decoration = {
        rounding = 6;
      };

      # Binds
      bind = [
        "$mod, Return, exec, foot"
        "$mod, W, killactive"
        "$mod, Space, exec, rofi -show drun"
        "$mod, M, exit"
      ];
    };
  };
}
