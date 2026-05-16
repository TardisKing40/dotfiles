let configDir = ../config;
in
{
    home.file = {
        ".config/hypr".source = "${configDir}/hypr";
	".config/wallpapers".source = "${configDir}/wallpapers";
	".config/waybar".source = "${configDir}/waybar";
	".config/kitty".source = "${configDir}/kitty";
	".config/vesktop".source = "${configDir}/vesktop";
    };
}
