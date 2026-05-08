{ config, lib, pkgs, ... }:

{
    programs.hyprland.enable = true;

    environment.systemPackages = with pkgs; [
      hyprpaper
      kitty
      libnotify
      swaylock
      wofi
      waybar
    ];
}
