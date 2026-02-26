{ pkgs, ... }:

{
  nixpkgs.hostPlatform = "aarch64-darwin";

  environment.systemPackages = with pkgs; [
    exploitdb
    nmap
    hashcat
    john
    wireshark
    ffuf
    seclists
    bloodhound-py
    enum4linux
    enum4linux-ng
    kerbrute
    responder
    metasploit
    python313Packages.impacket
    ghidra-bin
    httpx
    nuclei
    sqlmap
    firefox
    libimobiledevice
    frida-tools
    apktool
    ghauri
    hash-identifier
    katana
  ];


}
