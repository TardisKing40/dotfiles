{
    description = "Twodis NixOS";

    inputs = {
        nixpkgs.url = "nixpkgs/nixos-unstable";
        home-manager.url = "github:nix-community/home-manager";
    };

    outputs = { self, nixpkgs, home-manager, ... }: {
        nixosConfigurations.twodis-nix = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            modules = [
                ./configuration.nix
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