{ config, pkgs, ... }:

{
  system.defaults = {
    dock.autohide = false;
    NSGlobalDomain.AppleInterfaceStyle = "Dark";
    NSGlobalDomain.KeyRepeat = 2;
    finder.AppleShowAllExtensions = true;
  };
}
