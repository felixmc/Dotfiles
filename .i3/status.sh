#!/bin/bash
function i3_custom_status() {
	local MACHINE=$(uname -a)
	local SEP="Default \e[33m|\e[0m"

	while true; do
		local DATE=$(date "+%D %T")
		local MEM=$(cat /proc/meminfo | sed '1,2!d' | grep -Po '\d+' | sed '/0$/!N;s/\n/ /' | awk '{ print int((($1 - $2) / $1) * 100) }')
		local TEMP=$(sensors -u | grep temp1_input | grep -Po '\d+' | sed -n 2p)

		echo -e "$MACHINE $SEP TEMP: $TEMP F $SEP CPU: $SEP Memory: $MEM% $SEP $DATE"

		sleep 1
	done;
}

i3_custom_status
