{ config, pkgs, pkgs-2211, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    htop
    lsd
    kitty
    fastfetch
    wget
    btop
    tree
    pkgs-2211.openvpn
    nerd-fonts.iosevka
    osslsigncode
  ];
}
