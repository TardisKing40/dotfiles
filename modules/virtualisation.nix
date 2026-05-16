{ pkgs, ... }:

{
	virtualisation.spiceUSBRedirection.enable = true;
	virtualisation.libvirtd = {
		enable = true;
		qemu.swtpm.enable = true;
	};
	environment.systemPackages = with pkgs; [
		qemu
		spice
		spice-gtk
		spice-protocol
		virt-manager
		virt-viewer
		win-spice
		win-virtio
	];
}
