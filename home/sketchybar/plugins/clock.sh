#!/bin/sh

sketchybar --set "$NAME" \
  icon="$(date '+%a %d %B')" \
  label="$(date '+%H:%M')" \
  icon.font="JetbrainsMono Nerd Font Mono:Bold:14.0" \
  label.font="JetbrainsMono Nerd Font Mono:Bold:14.0" \
  icon.color=0xffcdd6f4 \
  label.color=0xfff5e0dc
