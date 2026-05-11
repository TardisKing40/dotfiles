{
    programs = {
        zsh = {
            enable = true;
            oh-my-zsh = {
	    	enable = true;
		theme = "skaro";
		plugins = [
			"git"
			"npm"
			"node"
			"rust"
			"history"
		];
	    };
            shellAliases = {
		cls = "clear";
                rebuild = "sudo nixos-rebuild switch --flake ~/dotfiles/";
            };
        };
    };
}
