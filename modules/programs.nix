{ config, lib, pkgs, ... }:

{
    programs = {
        firefox.enable = true;
        steam = {
            enable = true;
            remotePlay.openFirewall = true;
            dedicatedServer.openFirewall = true;
        };
        zsh.enable = true;
        sway.enable = true;
    };
}
