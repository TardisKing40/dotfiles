{ config, lib, pkgs, ... }:

{
    services.libinput.enable = true;
    services.displayManager = {
        enable = true;
        defaultSession = "hyprland";
	sddm = {
		enable = true;
		wayland.enable = true;
		theme = "catppuccin-mocha-mauve";
		package = pkgs.kdePackages.sddm;
	};
    };
}
