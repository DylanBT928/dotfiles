#!/bin/bash

lock=$'\uf023'
reboot=$'\uf01e'
suspend=$'\uf186'
hibernate=$'\uf2dc'
shutdown=$'\uf011'

options="$lock\n$reboot\n$suspend\n$shutdown"
chosen="$(echo -e "$options" | rofi -dmenu -i -theme ~/.config/rofi/power.rasi)"

case $chosen in
$lock)
    hyprlock
    ;;
$reboot)
    hyprshutdown -t 'Restarting...' --post-cmd 'reboot'
    ;;
$suspend)
    systemctl suspend
    ;;
$shutdown)
    hyprshutdown -t 'Shutting down...' --post-cmd 'shutdown -P 0'
    ;;
esac
