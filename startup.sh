#!/bin/bash
# Edgar Han

# mate settings
# currently having issues with mate and mouse
# calibration. disabled.
#mate-setting-daemon &
#mate-screensaver &

# Screensaver
# install xscreensaver: sudo apt-get install xscreensaver xscreensaver-gl-extra xscreensaver-data-extra
xscreensaver &

# Fix Resolution
xrandr --dpi 192
