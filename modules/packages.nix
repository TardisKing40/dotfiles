{ config, lib, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
    neovim
    wget
    kitty
    waybar
    git
    hyprpaper
    wofi
    gh
    brightnessctl
    swaylock
    curl
    imv
    playerctl
  ];
}
