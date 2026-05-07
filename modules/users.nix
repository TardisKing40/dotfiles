{ config, lib, pkgs, ... }:

{
    users.users.twodis = {
        isNormalUser = true;
        shell = pkgs.zsh;
        extraGroups = [
            "wheel"
            "networkmanager"
        ];
        packages = with pkgs; [
            fastfetch
        ];
    };
}