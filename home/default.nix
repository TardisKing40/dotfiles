{ config, pkgs, lib, inputs, ... }:

{
    imports = [
        ./user
    ];

    home.username = "twodis";
    home.homeDirectory = "/home/twodis";
    home.stateVersion = "25.11";

}