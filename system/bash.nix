{ config, pkgs, lib, ... }:
{

	# Terminal
	programs = {
	
		command-not-found.enable = false;
		
		# Bash
		bash = {
			enable true;
			shellAliases = {
				rebuild = "sudo nixos-rebuild switch";
				configure-dots = "cd repos/github/mynix-doties && code .";
			};
		};

		# Starship
		starship.enable = true;
	};

}