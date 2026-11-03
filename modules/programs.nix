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
        wireshark = {
            enable = true;
            dumpcap.enable = true;
            usbmon.enable = true;
        };
        gnupg.agent.enable = true;
    };
}
