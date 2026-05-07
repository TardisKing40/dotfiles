{
    programs = {
        zsh = {
            enable = true;
            oh-my-zsh.enable = true;
            shellAliases = {
                ls = "ls -la --color=auto";
                rebuild = "sudo nixos-rebuild switch --flake ~/.dotfiles/";
            };
        };
    };
}