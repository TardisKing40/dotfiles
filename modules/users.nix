{ config, lib, pkgs, ... }:

{
    users.users.twodis = {
        isNormalUser = true;
        shell = pkgs.zsh;
        extraGroups = [
            "wheel"
            "networkmanager"
	    "libvirtd"
	    "wireshark"
        ];
        packages = with pkgs; [
            fastfetch
        ];
    };
}
