#!/bin/bash
#Written by: Mirza Hubjer
#mhubjer@gmail.com

#Change DIR to wherever you keep your wallpaper pics
DIR="/home/$USER/Pictures/Wallpapers"
PIC=$(ls $DIR/* | shuf -n1)
while [ 1 ]; do
	for PIC in "$DIR"/*; do
		gsettings set org.gnome.desktop.background picture-uri "file://$PIC" && gsettings set 			org.gnome.desktop.background picture-options "stretched";
#The picture option above can also be centered, scaled, zoom, spanned, etc... The sleep command below stipulates that the wallpaper will switch every 60 seconds. You can change this to reflect however often you need it to occur.
		sleep 60
	done
done
