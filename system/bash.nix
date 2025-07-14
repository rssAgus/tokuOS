{ config, pkgs, lib, ... }:
{

	# Terminal
	shellAliases = [
		rebuild = "sudo nixos-rebuild switch"
	];

}