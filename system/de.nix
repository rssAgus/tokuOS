{ pkgs, inputs, ... }:

{
  services.displayManager.gdm.enable = true;
  programs.niri = {
    enable = true;
  };
  environment.systemPackages = with pkgs; [
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
    
  ];
}
