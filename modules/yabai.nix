
{ config, pkgs, ... }:

{
  services.yabai = {
    enable = true;
    enableScriptingAddition = true;

    extraConfig = ''
      # layout
      yabai -m config layout bsp
      yabai -m config window_placement second_child

      # padding & gap
      yabai -m config top_padding 10
      yabai -m config bottom_padding 10
      yabai -m config left_padding 10
      yabai -m config right_padding 10
      yabai -m config window_gap 10

      # mouse
      yabai -m config mouse_follows_focus on
      yabai -m config mouse_modifier alt
      yabai -m config mouse_action1 move
      yabai -m config mouse_action2 resize
      yabai -m mouse_drop_action swap

      # borders
      yabai -m config window_border on
      yabai -m config active_window_border_color 0xffe1e3e4
      yabai -m config normal_window_border_color 0xff494d64
      yabai -m config insert_feedback_color 0xff9dd274
      yabai -m config window_border_width 2
      yabai -m config window_border_hidpi off
      yabai -m config window_border_radius 11
      yabai -m config window_border_blur off

      # rules
      yabai -m rule --add app="^System Settings$" manage=off
      yabai -m rule --add app="^Calculator$" manage=off
      yabai -m rule --add app="^Karabiner-Elements$" manage=off

      yabai -m rule --add app="^(LuLu|Calculator|Software Update|Dictionary|System Preferences|System Settings|Photo Booth|Archive Utility|Python|LibreOffice|App Store|Steam|Alfred|Stickies)$" manage=off

      yabai -m rule --add label="Finder" app="^Finder$" title="(Co(py|nnect)|Move|Info|Pref)" manage=off
      yabai -m rule --add label="Safari" app="^Safari$" title="^(General|(Tab|Password|Website|Extension)s|AutoFill|Se(arch|curity)|Privacy|Advance)$" manage=off
      yabai -m rule --add label="About This Mac" app="System Information" title="About This Mac" manage=off
      yabai -m rule --add label="Select file to save to" app="^Inkscape$" title="Select file to save to" manage=off
    '';
  };
}
