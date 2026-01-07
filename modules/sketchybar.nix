
{ config, pkgs, ... }:

{
  services.sketchybar = {
    enable = true;
    package = pkgs.sketchybar;
  };

  environment.systemPackages = with pkgs; [
    sketchybar
  ];
}
