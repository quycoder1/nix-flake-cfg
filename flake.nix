{
	description = "My Nix-On-droid configuration";
	
	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
		home-manager = {
			url = "github:nix-community/home-manager/release-24.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		nix-on-droid = {
			url = "github:nix-community/nix-on-droid/release-24.05";
			inputs.nixpkgs.follows = "nixpkgs";
			inputs.home-manager.follows = "home-manager";
		};
	};
	outputs = { self, nixpkgs, home-manager, nix-on-droid }:
	{
		nixOnDroidConfigurations.default = nix-on-droid.lib.nixOnDroidConfiguration {
			modules = [
				./packages.nix
			];
			extraSpecialArgs = {
				
			};
			pkgs = import nixpkgs {
				system = "aarch64-linux";
				overlays = [
					nix-on-droid.overlays.default
				];
			};
			home-manager-path = home-manager.outPath;
		};
	};
}
