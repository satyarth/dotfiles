#!/bin/bash

source ~/.colors/colors.sh

dzen2bg="#3f3f3f"
dzen2fg="#ffffff"
font='Tewi'

nowplaying=$(ncmpcpp --now-playing)
strlen=${#nowplaying}
width=`echo $strlen*6 + 12 | bc`
output="^fg($color8)$nowplaying^fg()"

(echo $output; sleep 2)| dzen2 -fn $font -fg $dzen2fg -bg $dzen2bg -x 32 -y 32 -w $width -ta l & sleep 2
