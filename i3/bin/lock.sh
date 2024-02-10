##!/usr/bin/env bash

killall xidlehook
# Only exported variables can be used within the timer's command.
export PRIMARY_DISPLAY="$(xrandr | awk '/ primary/{print $1}')"

# Run xidlehook
xidlehook \
  --not-when-fullscreen \
  --not-when-audio \
  --timer 300 \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness .1' \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness 1' \
  --timer 180 \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness 1; i3lock -i $HOME/Pictures/lock.png' \
    '' \
  --timer 600 \
    'systemctl suspend' \
    ''
