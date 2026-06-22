{ config, lib, pkgs, ... }:

{
    programs.hyprland.enable = true;

    environment.systemPackages = with pkgs; [
      hyprpaper
      hyprlock
      kitty
      libnotify
      wofi
      waybar
      sway-contrib.grimshot
    ];
}
