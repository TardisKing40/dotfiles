{ config, lib, pkgs, ... }:

{
    users.users.twodis = {
        isNormalUser = true;
        extraGroups = [
            "wheel"
            "networkmanager"
        ];
        packages = with pkgs; [
            fastfetch
        ];
    };
}