{ config, lib, pkgs, ... }:

{
    boot.loader = {
        systemd-boot.enable = true;
        efi.canTouchEfiVariables = true;
    };
    boot.kernelParams = [
        "quiet"
        "splash"
    ];
}
