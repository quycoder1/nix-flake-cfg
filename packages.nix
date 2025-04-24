{ config, lib, pkgs, ... }:

{
	environment.packages = with pkgs; [
		neovim
		gcc
		openssh
		btop
		bat
		git 
	];

	environment.etcBackupExtension = ".bak";
	system.stateVersion = "24.05";

  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  time.timeZone = "Asia/Ho_Chi_Minh";

  home-manager = {
    config = ./home.nix;
    backupFileExtension = "hm-bak";
    useGlobalPkgs = true;
  };
}
