{ config, pkgs, ... }:

{
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;

  home-manager.users."0xc4t" = { pkgs, ... }: {
    home.username = "0xc4t";
    home.homeDirectory = "/Users/0xc4t";

    imports = [
      ../home/0xc4t.nix
    ];

  };
}
