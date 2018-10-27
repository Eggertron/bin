#!/bin/bash

# Updates the youtube lua plugin directly from github

DEST=/usr/lib/vlc/lua/playlist
URL="https://raw.githubusercontent.com/videolan/vlc/master/share/lua/playlist/youtube.lua"

wget -O $DEST/youtube.lua $URL
