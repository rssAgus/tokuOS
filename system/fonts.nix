{ pkgs, ... }:

{
  # Configuración de teclado (Ingles)
  services.xserver.xkb = {
    layout = "en";
    variant = "";
  };
  
  # También para la consola tty
  console.keyMap = "en";

  # Fuentes: FiraCode y JetBrainsMono (Nerd Fonts)
  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "FiraCode" "JetBrainsMono" ]; })
  ];

  fonts.fontconfig.defaultFonts = {
    monospace = [ "FiraCode Nerd Font" ];
  };
}