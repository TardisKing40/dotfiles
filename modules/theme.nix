{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		adwaita-icon-theme
		catppuccin-gtk
		glib
		gsettings-desktop-schemas
		nwg-look
	];
}
