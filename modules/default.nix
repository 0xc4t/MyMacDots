
{ config, pkgs, ... }:

{
  system.defaults = {
    dock.autohide = true;
    NSGlobalDomain.AppleInterfaceStyle = "Dark";
    NSGlobalDomain.KeyRepeat = 2;
    finder.AppleShowAllExtensions = true;
  };
}
