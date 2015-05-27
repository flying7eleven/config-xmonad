#!/bin/bash
cur_bri=$(/usr/bin/cat /sys/class/backlight/gmux_backlight/brightness)
changeAmount=5000
if [ $1 == "up" ] ; then
	bri=$(($cur_bri+$changeAmount))
	`echo $bri > /sys/class/backlight/gmux_backlight/brightness`
fi
if [ $1 == "down" ] ; then
	bri=$(($cur_bri-$changeAmount))
	`echo $bri > /sys/class/backlight/gmux_backlight/brightness`
fi
