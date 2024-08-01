#!/usr/bin/env bash

set e

# options="S* WiFi\nS* WiFi 5Ghz"

# # Output the options for Rofi to display
# echo -en "$options"

device="wlx984827d39922"


echo "$(iwctl station $device get-networks | grep -oP "^\s*(.*?)\s+[^ ]+\s+\*+")"
