{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "twodis-nix";
  networking.networkmanager.enable = true;

  time.timeZone = "Australia/Sydney";

  services.libinput.enable = true;

  users.users.twodis = {
     isNormalUser = true;
     extraGroups = [
       "wheel"
       "networkmanager"
     ];
     packages = with pkgs; [
       tree
       fastfetch
     ];
  };

  programs.hyprland.enable = true;
  programs.firefox.enable = true;
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    neovim
    wget
    kitty
    waybar
    git
    hyprpaper
    wofi
    gh
  ];

  services.displayManager = {
    enable = true;
    defaultSession = "hyprland";
    sddm = {
	enable = true;
	wayland.enable = true;
    };
  };

  system.stateVersion = "25.11";

}

