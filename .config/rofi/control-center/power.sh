#!/usr/bin/env bash

options="$ Power Off\n$ Reboot\n$ Suspend\n$ Lock"
# options="--> Power Off\n--> Reboot\n--> Suspend\n--> Lock"

# Output the options for Rofi to display
echo -en "$options"

case $@ in
    *Lock)
        pkill rofi
        swaylock
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

