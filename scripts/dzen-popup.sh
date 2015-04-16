#!/bin/bash

dzen2bg="#3f3f3f"
dzen2fg="#ffffff"
font='Tewi'

source ~/.colors/colors.sh

read input_string
strlen=${#input_string}
width=`echo $strlen*5 + 12 | bc`

color_number=$RANDOM
let "color_number %= 8"
color=color${color_number}
output_string="^fg(${!color})$input_string^fg() "


(echo $output_string; sleep 2)| dzen2 -fn $font -fg $dzen2fg -bg $dzen2bg -x 32 -y 32 -w $width -ta & sleep 2