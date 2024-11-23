#!/usr/bin/env bash

BATTERY_PATH="/sys/class/power_supply/BAT0/capacity"

if [ ! -f "$BATTERY_PATH" ]; then
  echo "E1" 
  exit 1
fi

battery_level=$(cat "$BATTERY_PATH")

if ! [[ "$battery_level" =~ ^[0-9]+$ ]]; then
  echo "E2"
  exit 1
fi

battery_hex=$(printf "%X" "$battery_level")

echo $battery_hex
