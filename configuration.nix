{ config, lib, pkgs, ... }:

{
  imports = [
    /etc/nixos/hardware-configuration.nix
    ./modules
  ];

  system.stateVersion = "25.11";

}

