{ config, lib, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
      neovim
      wget
      git
      gh
      brightnessctl
      curl
      imv
      playerctl
      vscode
      vesktop
      spotify
      kdePackages.dolphin
      element-desktop
      htop
      catppuccin-sddm
      bluez
      wireshark
      android-tools
      vlc
      brave
  ];
}
