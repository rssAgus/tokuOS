{ config, pkgs, ... }: 
{
  fonts.packages = with pkgs; [
	  nerd-fonts.fira-code
	  nerd-fonts.space-mono
	  nerd-fonts.hurmit
  ];
}