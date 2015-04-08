#!/bin/sh

wallpaper=`find ~/.wallpaper/ -type f \( -name '*.jpg' -o -name '*.png' \) -print0 | shuf -n1 -z`
echo $wallpaper > ~/.colors/wallpaper
feh --bg-fill $wallpaper