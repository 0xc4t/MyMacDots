#!/bin/sh

# Ambil SSID connected (preferred pertama biasanya yang aktif)
SSID=$(networksetup -listpreferredwirelessnetworks en0 2>/dev/null | grep -v '^Preferred networks on' | head -1 | xargs)

# Kalau kosong (ga connect / interface salah), fallback
[ -z "$SSID" ] && SSID="No WiFi"

sketchybar --set "$NAME" \
  icon="􀙇" \
  label="$SSID" \
  icon.font="JetBrainsMono Nerd Font Mono:Bold:14.0" \
  label.font="JetBrainsMono Nerd Font Mono:Bold:14.0" \
  icon.color=0xff89b4fa
