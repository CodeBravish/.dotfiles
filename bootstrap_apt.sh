#!/usr/bin/env bash
# Install apps from apt
sudo apt install -y
  sway
	waybar
	eza
  fastfetch
  alacritty

# Install KEYD for escape remap
git clone https://github.com/rvaiya/keyd
cd keyd
make && sudo make install
sudo systemctl enable --now keyd

echo -e "
[ids]\n
\n
*\n
\n
[main]\n
\n
# Maps capslock to escape when pressed and control when held.\n
capslock = overload(control, esc)\n
\n
# Remaps the escape key to capslock\n
esc = capslock\n
" > /etc/keyd/default.conf

sudo keyd reload
#
