#!/bin/bash

# Updates the youtube lua plugin directly from github
# use whereis vlc to find the folder

DEST="$( whereis vlc | awk '{ print $3 }' )/lua/playlist"
URL="https://raw.githubusercontent.com/videolan/vlc/master/share/lua/playlist/youtube.lua"

wget -O $DEST/youtube.lua $URL
