vol=$(amixer get Master | egrep -o "[0-9]+%" | head -n 1)
output_string="vol: $vol"

echo $output_string