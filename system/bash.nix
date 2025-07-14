{ config, pkgs, lib, ... }:
{

	# Terminal
	programs = [

		bash = {
			shellAliases = [
				rebuild = "sudo nixos-rebuild switch";
				configure-dots = "cd repos/github/mynix-doties && code .";
			];
		};

		starship.enable = true;
	];

}