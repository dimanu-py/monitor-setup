#!/bin/bash

paru -S -y evdi displaylink
echo "Installed evdi and displaylink successfully"

systemctl enable displaylink.service
echo "Displaylink enable"

file_path="/etc/X11/xorg.conf.d/20-evdi.conf"

if [ ! -d "$(dirname "$file_path")"  ]; then
	sudo mkdir -p "$(dirname "$file_path")"
fi

sudo tee "$file_path" > /dev/null << EOF
Section "OutputClass"
	Identifier "DisplayLink"
	MatchDriver "evdi"
	Driver "modesetting"
	Option "AccelMethod" "none"
EndSection
EOF

echo "Configuration written to $file_path"

xrandr --setprovideroutputsource 1 0
xrandr --setprovideroutputsource 2 0

xrandr --output DVI-I-2-1 --mode 1920x1080 --same-as eDP-1
xrandr --output DVI-I-3-2 --mode 1920x1080 --right-of DVI-I-2-1