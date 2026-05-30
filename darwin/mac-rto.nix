{ pkgs, ... }:

{
  nixpkgs.hostPlatform = "aarch64-darwin";

  users.users."0xc4t".home = "/Users/0xc4t";
  system.primaryUser = "0xc4t";
  system.stateVersion = 6;

  environment.systemPackages = with pkgs; [
    nmap
    hashcat
    john
    wireshark
    ffuf
    seclists
    responder
    metasploit
    python313Packages.impacket
    httpx
    nuclei
    sqlmap
    firefox
    ghauri
    sslscan
    feroxbuster
 ];
}
