{ config, pkgs, lib, ... }:
{

	# Terminal
	shellAliases = [
		rebuild = "sudo nixos-rebuild switch";
		configure-dots = "cd repos/github/mynix-doties && code .";
	];

	# Starship
	programs.starship.enable = true;

}