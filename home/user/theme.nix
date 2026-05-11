{ pkgs, ... }:

{
	qt.enable = true;
	qt.platformTheme.name = "gtk";
	gtk = {
		enable = true;
		theme.name = "Adwaita";
		theme.package = pkgs.adwaita-icon-theme;
		colorScheme = "dark";
	};
}
