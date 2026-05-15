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
      discord
      spotify
      kdePackages.dolphin
      element-desktop
      htop
      catppuccin-sddm
  ];
}
