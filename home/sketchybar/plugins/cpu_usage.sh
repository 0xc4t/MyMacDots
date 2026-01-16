#!/bin/bash

raw=$(top -l 1 | awk '/CPU usage/ {print $3}' | sed 's/%//')
normalized=$(echo "$raw / 100" | bc -l)
percent=$(printf "%.0f%%" "$raw")

sketchybar --push cpu_usage "$normalized"
sketchybar --set cpu_usage label="$percent"
