#!/bin/sh

PERCENTAGE="$(pmset -g batt | grep -Eo '[0-9]+%' | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

[ -z "$PERCENTAGE" ] && exit 0

if [ "$PERCENTAGE" -ge 90 ]; then
  ICON="􀛨"        # 100%
elif [ "$PERCENTAGE" -ge 60 ]; then
  ICON="􀺸"        # 75%
elif [ "$PERCENTAGE" -ge 30 ]; then
  ICON="􀺶"        # 50%
elif [ "$PERCENTAGE" -ge 10 ]; then
  ICON="􀛩"        # 25%
else
  ICON="􀛪"        # 0%
fi

if [ -n "$CHARGING" ]; then
  ICON="􀢋"        # charging
fi

sketchybar --set "$NAME" icon="$ICON" label="${PERCENTAGE}%"
