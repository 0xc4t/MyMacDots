{ pkgs, ... }:

{
  services.skhd = {
    enable = true;
    package = pkgs.skhd;
  };

  # skhd configuration (declarative)
  environment.etc."skhdrc".text = ''
    #################################
    # Focus window (arrow keys)
    #################################
    alt - left  : yabai -m window --focus west
    alt - down  : yabai -m window --focus south
    alt - up    : yabai -m window --focus north
    alt - right : yabai -m window --focus east
    alt - u : yabai -m window --toggle float
    alt - f : yabai -m window --toggle zoom-fullscreen


    #################################
    # Swap windows (arrow keys)
    #################################
    shift + alt - left  : yabai -m window --swap west
    shift + alt - down  : yabai -m window --swap south
    shift + alt - up    : yabai -m window --swap north
    shift + alt - right : yabai -m window --swap east

    #################################
    # Applications
    #################################
    alt - p      : open -na /Applications/flameshot.app
    alt - return : kitty --single-instance -d ~

    #################################
    # Window actions
    #################################
    alt - q : yabai -m window --close

    #################################
    # Move window between spaces
    #################################
    shift + alt - p : yabai -m window --space prev
    shift + alt - n : yabai -m window --space next

    #################################
    # Focus specific space
    #################################
    alt - 1 : yabai -m space --focus 1
    alt - 2 : yabai -m space --focus 2
    alt - 3 : yabai -m space --focus 3
    alt - 4 : yabai -m space --focus 4
    alt - 5 : yabai -m space --focus 5
    alt - 6 : yabai -m space --focus 6
    alt - 7 : yabai -m space --focus 7
    alt - 8 : yabai -m space --focus 8
    alt - 9 : yabai -m space --focus 9
    alt - 0 : yabai -m space --focus 10
    
    ###########################################
    # Move focused window to workspace 1–10 ###
    ###########################################
    alt + shift - 1 : yabai -m window --space 1
    alt + shift - 2 : yabai -m window --space 2
    alt + shift - 3 : yabai -m window --space 3
    alt + shift - 4 : yabai -m window --space 4
    alt + shift - 5 : yabai -m window --space 5
    alt + shift - 6 : yabai -m window --space 6
    alt + shift - 7 : yabai -m window --space 7
    alt + shift - 8 : yabai -m window --space 8
    alt + shift - 9 : yabai -m window --space 9
    alt + shift - 0 : yabai -m window --space 10

  '';
}

