{ config, lib, pkgs, ... }:

{
    networking = {
        hostName = "twodis-nix";
        networkmanager.enable = true;
    };
}