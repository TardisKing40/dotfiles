{ config, lib, pkgs, ... }:

{
    services.libinput.enable = true;
    services.greetd = {
    	enable = true;
	settings = {
		default_session = {
			user = "greeter";
			command = "${pkgs.tuigreet}/bin/tuigreet --cmd start-hyprland";
		};
	};
    };
    services.blueman.enable = true;
    services.yubikey-agent.enable = true;
    services.logind.settings.Login.HandlePowerKey = "ignore";
}
