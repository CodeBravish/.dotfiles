#!/usr/bin/env bash

options="$ Screenshot"

# Output the options for Rofi to display
echo -en "$options"

case $@ in
    *Screenshot)
        pkill rofi
        grim -g "$(slurp)" - | wl-copy
        ;;
    *Power*)
        pkill rofi
        systemctl poweroff
        ;;
    *Reboot)
        pkill rofi
        systemctl reboot
        ;;
    *Suspend)
        pkill rofi
        systemctl suspend
        ;;
esac