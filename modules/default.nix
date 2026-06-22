{ ... }:

{
    imports = [
        ./boot.nix
        ./networking.nix
        ./time.nix
        ./services.nix
        ./programs.nix
        ./nixsettings.nix
        ./packages.nix
        ./users.nix
        ./hyprland.nix
        ./fonts.nix
        ./theme.nix
        ./virtualisation.nix
        ./hardware.nix
    ];
}
