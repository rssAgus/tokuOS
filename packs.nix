{ config, pkgs, ... }: {

environment.systemPackages = with pkgs; [
	neovim
	git
	vscode
	firefox	
	spotify
	nodejs		
	openvpn
	openfortivpn
	unzip
	zip
	nuclei
	zap
	gobuster
	go
	fastfetch
	pkgs.starship	
	arp-scan	
	nmap
	python3
	john
	theharvester
	dig
	python313Packages.pip
	pipx
	tree
	qemu
	virt-manager
 ];

}
