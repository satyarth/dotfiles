#!/bin/bash
dzen2bg="#3f3f3f"
dzen2fg="#ffffff"
font='Tewi'
panel=$(bash ~/.panel/script.sh)
(echo $panel; sleep 2) | dzen2 -fn $font -fg $dzen2fg -bg $dzen2bg -x 32 -y 32 -w 216 -ta & sleep 2
