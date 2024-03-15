#!/bin/bash

main_monitor="DVI-I-2-1"
secondary_monitor="DVI-I-3-2"
internal_monitor="eDP-1"

xrandr --output $internal_monitor --same-as $main_monitor --mode 1920x1080
echo "Set $main_monitor as mirror of internal monitor"

xrandr --output $secondary_monitor --mode 1920x1080 --right-of $main_monitor
echo "Set $secondary_monitor as monitor on the right of $main_monitor main monitor"