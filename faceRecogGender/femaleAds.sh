#!/bin/bash
cd /home/pi/faceRecogGender/FemaleAd
FILES=~/video/*mp4
count=0
IFS='
'
for f in $(ls $(FILES) | sort -R)
do
	if [ "$count" == 0 ]
	then
	printf "%3d> %s\n" "$count" "$f"
	omxplayer -o hdmi "$f"
	count=$((count+1))
	else
	break
	fi
done
