{ config, pkgs, ... }:
let
	Shortcuts = [
		sudo nixos-rebuild switch = "rebuild"
	];
in {
	# Bash
	programs.bash.enable = true;

	programs.starship.enable = true;
}