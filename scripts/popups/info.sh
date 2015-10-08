#!/bin/bash

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
	echo -n "bat: $statech $charge"
	return
}

temperature() {
	temp=$(acpi -t | cut -d " " -f 4 | cut -c 1-2)
	echo -n "temp: $temp°C"
}

memory() {
	mem_used=$(free -m | grep '-' | awk '{print $3}')
	mem_total=$(free -m | grep 'Mem' | awk '{print $2}')
	mem_percentage=$(echo "scale=1;$mem_used*100/$mem_total" | bc)
	echo -n "mem: $mem_percentage%"
	return
}

music() {
	# mpc_status=$(mpc status)
	# artist=$(echo "$mpc_status" | head -n 1 | cut -d "-" -f 1)
	# title=$(echo "$mpc_status" | head -n 1 | cut -d "-" -f 2)
	# song_time=$(echo "$mpc_status" | head -n 2 | tail -n 1 | cut -d " " -f 5)
	# echo -n "[$song_time] $artist - $title"
	nowplaying=$(ncmpcpp --now-playing)
	echo -n "$nowplaying"
	return
}

currenttime() {
	currenttime=$(date +%H:%M)
	echo -n "$currenttime"
}

#!/bin/bash
panel="$(currenttime) %{R} $(battery) %{R} $(temperature)"
echo $panel
