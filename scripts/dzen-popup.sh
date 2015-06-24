#!/bin/bash

dzen2bg="#3f3f3f"
dzen2fg="#ffffff"
font='Tewi'

read input_string
strlen=${#input_string}
width=`echo $strlen*6 + 12 | bc`

output_string="$input_string"


(echo $output_string; sleep 2)| dzen2 -fn $font -fg $dzen2fg -bg $dzen2bg -x 32 -y 32 -w $width -ta c & sleep 2
