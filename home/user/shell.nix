{
    programs = {
        zsh = {
            enable = true;
            ohMyZsh.enable = true;
            shellAliases = {
                ls = "ls -la --color=auto";
                rebuild = "sudo nixos-rebuild switch --flake ~/.dotfiles/";
            };
        };
    };
}