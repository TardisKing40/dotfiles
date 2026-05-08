{ config, lib, pkgs, ... }:

{
    programs.hyprland.enable = true;

    enviroment.systemPackages = with pkgs; {
      hyprpaper
      kitty
      libnotify
      swaylock
      wofi
      waybar
    }
}
