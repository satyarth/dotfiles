#!/bin/bash

source ~/dotfiles/colors/colors.sh

font='-*-fixed-medium-*-*-*-12-*-*-*-*-*-*-*'

read input_string

stripped_string=`echo $input_string | sed ':again;$!N;$!b again; s/%{[^}]*}//g'`

strlen=${#stripped_string}
width=`echo $strlen*6+18 | bc`

output_string="%{c}$input_string"

(echo $output_string; sleep 2)| (lemonbar -g ${width}x20+32+32 -f $font -B#ff333333 -F$color2)
