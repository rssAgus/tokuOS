# ~/nix-config/home.nix
{ config, pkgs, ... }:

{
  home.username = "agustin"; # Tu nombre de usuario
  home.homeDirectory = "/home/agustin"; # Tu directorio home

  # La version de Home Manager
  home.stateVersion = "25.05"; # Debe coincidir con home-manager.inputs.nixpkgs en flake.nix

  # Programas y paquetes de usuario
  home.packages = with pkgs; [
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
	arp-scan	
	nmap
	python3
  ];

  # Configuración de programas (ejemplo para Bash)
  programs.bash = {
    enable = true;
    shellAliases = {
      ll = "ls -lh";
      update = "sudo nixos-rebuild switch --flake ~/nix-config/#tu-hostname"; # Alias util
    };
  };

# Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "es_AR.UTF-8";
    LC_IDENTIFICATION = "es_AR.UTF-8";
    LC_MEASUREMENT = "es_AR.UTF-8";
    LC_MONETARY = "es_AR.UTF-8";
    LC_NAME = "es_AR.UTF-8";
    LC_NUMERIC = "es_AR.UTF-8";
    LC_PAPER = "es_AR.UTF-8";
    LC_TELEPHONE = "es_AR.UTF-8";
    LC_TIME = "es_AR.UTF-8";
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.agustin = {
    isNormalUser = true;
    description = "agustin";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
	initialPassword = "zafiro";
    packages = with pkgs; [];
  };

fonts.packages = with pkgs; [
	nerd-fonts.fira-code
];

# OpenSSH
services.openssh.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Nix features
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Flatpak enabled
  services.flatpak.enable = true;


  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/Argentina/Buenos_Aires";

 # COSMIC
 services.displayManager.cosmic-greeter.enable = true;
 services.desktopManager.cosmic.enable = true;
 services.desktopManager.cosmic.xwayland.enable = true;


  # Git configuration (ejemplo)
  programs.git = {
    enable = true;
    userName = "rssAgus";
    userEmail = "arusso@fixear.net";
  };

  # Servicios de usuario (ej. para notificaciones, syncthing, etc.)
  # services.dunst.enable = true;

  # Puedes habilitar otras configuraciones de programas, dotfiles, etc.
  # programs.starship.enable = true;
  # programs.vim.enable = true;
  # programs.zsh.enable = true;

  # Fonts
  # home.sessionVariables = {
  #   NIXOS_OZONE_WL = "1"; # Para usar apps Electron con Wayland
  # };

  # Archivos de configuración y dotfiles
  # home.file.".config/my-app/config.conf".source = ./dotfiles/my-app/config.conf;
}