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
    security.pam.services.greetd = {
	u2fAuth = true;
    };
    security.pam.u2f = {
	enable = true;
	control = "sufficient";
    };
    services.blueman.enable = true;
    services.yubikey-agent.enable = true;
    services.logind.settings.Login.HandlePowerKey = "ignore";
    services.cron = {
        enable = true;
	systemCronJobs = [
	    "0 * * * * > /home/*/.zsh_history"
	    ];
    };
}
