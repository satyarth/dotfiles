#!/bin/bash
source ~/.colors/colors.sh

battery() {
	charge=$(acpi | cut -d "," -f 2)
	state=$(acpi | cut -d "," -f 1 | cut -d " " -f 3)
	if [ "$state" = "Full" ]; then
		statech="f"
	elif [ "$state" = "Discharging" ]; then
		statech="d"
	elif [ "$state" = "Charging" ]; then
		statech="c"
	fi
	echo -n "^fg($color4)bat: $statech $charge^fg()"
	return
}

temperature() {
	temp=$(acpi -t | cut -d " " -f 4 | cut -c 1-2)
	echo -n "^fg($color5)temp: $temp°C^fg()"
}

memory() {
	mem_used=$(free -m | grep '-' | awk '{print $3}')
	mem_total=$(free -m | grep 'Mem' | awk '{print $2}')
	mem_percentage=$(echo "scale=1;$mem_used*100/$mem_total" | bc)
	echo -n "^fg($color6)mem: $mem_percentage%^fg()"
	return
}

music() {
	# mpc_status=$(mpc status)
	# artist=$(echo "$mpc_status" | head -n 1 | cut -d "-" -f 1)
	# title=$(echo "$mpc_status" | head -n 1 | cut -d "-" -f 2)
	# song_time=$(echo "$mpc_status" | head -n 2 | tail -n 1 | cut -d " " -f 5)
	# echo -n "[$song_time] $artist - $title"
	nowplaying=$(ncmpcpp --now-playing)
	echo -n "^fg($color7)$nowplaying^fg()"
	return
}

currenttime() {
	currenttime=$(date +%H:%M)
	echo -n "^fg($color2)$currenttime^fg()"
}

#!/bin/bash
dzen2bg="#3f3f3f"
dzen2fg="#ffffff"
font='Tewi'
panel=" $(currenttime) // $(battery) // $(temperature)"
(echo $panel; sleep 2) | dzen2 -fn $font -fg $dzen2fg -bg $dzen2bg -x 32 -y 32 -w 216 -ta & sleep 2
