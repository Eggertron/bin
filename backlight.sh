#!/bin/bash
BACKLIGHT="/sys/class/backlight/intel_backlight/brightness"
echo $(expr $(cat $BACKLIGHT) + $1) | sudo tee $BACKLIGHT;
