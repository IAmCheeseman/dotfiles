#!/usr/bin/env bash

status=$(playerctl status)
title=$(playerctl metadata title)
artist=$(playerctl metadata artist)

if [ $status = "Playing" ]
then
  echo "󰐊 $title - $artist"
elif [ $status = "Paused" ]
then
  echo "󰏤 $title - $artist"
fi
