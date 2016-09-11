#!/bin/bash

VAL="$(xrandr --current --verbose | grep 'Brightness:' | sed 's/^.*: //')"
NEWVAL=$(echo $VAL - 0.1 | bc -l)

xrandr --output LVDS-1 --brightness $NEWVAL
