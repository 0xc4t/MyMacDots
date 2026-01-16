
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    lsd
    kitty
    mkalias
    fastfetch
    wget
    btop
    flameshot
    sketchybar
    tree
    lua
    openvpn
    nerd-fonts.iosevka
  ];
}
