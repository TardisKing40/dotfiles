{ config, lib, pkgs, ... }:

{
    programs = {
        hyprland.enable = true;
        firefox.enable = true;
        steam = {
            enable = true;
            remotePlay.openFirewall = true;
            dedicatedServer.openFirewall = true;
        };
        zsh.enable = true;
    };
}