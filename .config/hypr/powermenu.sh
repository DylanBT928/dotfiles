#!/bin/sh

chosen=$(printf "  lock\n󰈆  logout\n󰤄  sleep\n󰜉  reboot\n  shutdown" | wofi --dmenu --hide-search --cache-file --style "~/.config/hypr/style.css" --width 200 --height 200 --cache-file /dev/null)

case "$chosen" in
*"lock")
    hyprlock
    ;;
*"logout")
    hyprctl dispatch exit
    ;;
*"sleep")
    hyprlock & sleep 0.5 && systemctl suspend
    ;;
*"reboot")
    systemctl reboot
    ;;
*"shutdown")
    systemctl poweroff
    ;;
esac
