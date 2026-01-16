#!/bin/sh

# volume_change event supplies $INFO = current volume percentage

if [ "$SENDER" = "volume_change" ]; then
  VOLUME="$INFO"

  if [ "$VOLUME" -ge 90 ]; then
    ICON="􀊨"      # 100%
  elif [ "$VOLUME" -ge 60 ]; then
    ICON="􀊦"      # 66%
  elif [ "$VOLUME" -ge 30 ]; then
    ICON="􀊤"      # 33%
  elif [ "$VOLUME" -ge 10 ]; then
    ICON="􀊠"      # 10%
  elif [ "$VOLUME" -eq 0 ]; then
    ICON="􀊢"      # mute
  else
    ICON="􀊠"
  fi

  sketchybar --set "$NAME" icon="$ICON" label="$VOLUME%" drawing=on
fi
