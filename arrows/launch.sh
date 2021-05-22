#!/bin/bash
# Terminate already running bar instances
killall -q polybar

for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar main &
done

