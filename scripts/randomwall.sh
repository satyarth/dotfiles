#!/bin/sh

wallpaper=`find ~/.wallpaper/ -type f \( -name '*.jpg' -o -name '*.png' \) -print0 | shuf -n1 -z`
feh --bg-fill $wallpaper
cp $wallpaper /tmp/wall.jpg