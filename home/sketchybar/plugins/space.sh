#!/bin/bash

if [ "$SELECTED" = "true" ]; then
  sketchybar --set "$NAME" \
    icon.font="JetBrainsMono Nerd Font:Bold:14.0" \
    label.font="JetBrainsMono Nerd Font:Bold:14.0" \
    icon.color=0xffcdd6f4
else
  sketchybar --set "$NAME" \
    icon.font="JetBrainsMono Nerd Font:Bold:14.0" \
    label.font="JetBrainsMono Nerd Font:Bold:14.0" \
    icon.color=0xffa6adc8
fi
