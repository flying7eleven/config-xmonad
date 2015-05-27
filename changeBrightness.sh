#!/bin/bash
currentBrightness=$(/usr/bin/cat /sys/class/backlight/gmux_backlight/brightness)
maximumBrightness=$(/usr/bin/cat /sys/class/backlight/gmux_backlight/max_brightness)
changeAmount=5000
if [ $1 == "up" ] ; then
	bri=$(($currentBrightness+$changeAmount))
	if [ $bri -gt $maximumBrightness ] ; then
		bri=$maximumBrightness
	fi
	`echo $bri > /sys/class/backlight/gmux_backlight/brightness`
fi
if [ $1 == "down" ] ; then
	bri=$(($currentBrightness-$changeAmount))
	if [ $bri -lt 0 ] ; then
		bri=0
	fi
	`echo $bri > /sys/class/backlight/gmux_backlight/brightness`
fi
