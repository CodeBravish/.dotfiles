#!/usr/bin/env bash

# # List of modes
# modes="window\nrun\ndrun\nssh"

# # Show the menu and get the selected mode
# selected_mode=$(echo -e "$modes" | rofi -dmenu -p "Select Mode" -config ~/.config/rofi/ctrl-menu.rasi)

# # Execute the selected mode
# if [ -n "$selected_mode" ]; then
#     rofi -show "$selected_mode" -config ~/.config/rofi/ctrl-menu.rasi
# fi

rofi -show run -config ~/.config/rofi/ctrl-menu.rasi