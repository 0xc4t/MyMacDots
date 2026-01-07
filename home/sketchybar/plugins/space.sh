#!/bin/bash

if [ "$SELECTED" = "true" ]; then
  sketchybar --set "$NAME" \
    icon.color=0xffcdd6f4
else
  sketchybar --set "$NAME" \
    icon.color=0xffa6adc8
fi
