#!/bin/bash

status=$(playerctl status) 
song=$(playerctl metadata title)
album=" (`playerctl metadata album`)"

if [ "$album" == " ()" ]
then
    album=""
fi

if [ $status = "Playing" ]
then
    echo " Playing | $song$album by $(playerctl metadata artist) "
elif [ $status = "Paused" ]
then
    echo " Paused | $song$album by $(playerctl metadata artist) "
else
    echo " Stopped "
fi