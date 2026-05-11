{
    description = "Twodis NixOS";

    inputs = {
        nixpkgs.url = "nixpkgs/nixos-unstable";
        home-manager.url = "github:nix-community/home-manager";
	catppuccin.url = "github:catppuccin/nix";
    };

    outputs = { self, nixpkgs, catppuccin, home-manager, ... }: {
        nixosConfigurations.twodis-nix = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            modules = [
                ./configuration.nix
		catppuccin.nixosModules.catppuccin
                home-manager.nixosModules.home-manager
                {
                    home-manager = {
                        useGlobalPkgs = true;
                        useUserPackages = true;
                        users.twodis = import ./home;
                        backupFileExtension = "backup";
                    };
                }
            ];
        };
    };
}
