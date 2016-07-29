# This script prints your nvidia GPU temperature if
# you have installed video-nvidia drivers
# Press [q] to quit

#!/bin/bash
while true; do
	TEMP=$(nvidia-smi -a | grep "GPU Current Temp" | grep -o '[0-9]\+')
	
	printf "GTX 770 Temp: %s\r" "$TEMP"
    	read -t 1 -n 1 key

    	if [[ $key = q ]] #|| [[ $key = $escape ]]
    	then
        	break
    	fi
	sleep 1
done
