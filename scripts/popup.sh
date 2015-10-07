#!/bin/bash

dzen2bg="#3f3f3f"
dzen2fg="#ffffff"
font='-*-fixed-medium-*-*-*-12-*-*-*-*-*-*-*'

read input_string
strlen=${#input_string}
width=`echo $strlen*6 | bc`

output_string="$input_string"

(echo $output_string; sleep 2)| lemonbar -g ${width}x20+32+32 -f $font & sleep 2
