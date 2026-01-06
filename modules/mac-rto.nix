
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
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
  ];
}
