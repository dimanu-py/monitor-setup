#!/bin/zsh

default_internal_monitor="eDP-1"
default_main_monitor="DVI-I-2-1"
default_secondary_monitor="DVI-I-3-2"

internal_monitor=${1:-$default_internal_monitor}
main_monitor=${2:-$default_main_monitor}
secondary_monitor=${3:-$default_secondary_monitor}

xrandr --output $internal_monitor --same-as $main_monitor --mode 1920x1080
echo "Set $main_monitor as mirror of internal monitor"

xrandr --output $secondary_monitor --mode 1920x1080 --right-of $main_monitor
echo "Set $secondary_monitor as monitor on the right of $main_monitor main monitor"