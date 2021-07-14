#!/bin/bash

if [[ "$1" == "" ]]; then echo "Missing YouTube URL"; exit 1; fi

VLC_LUA_PATH="/usr/lib/x86_64-linux-gnu/vlc/lua/playlist"
YOUTUBE_LUA_URL="https://raw.githubusercontent.com/videolan/vlc/master/share/lua/playlist/youtube.lua"
TITLE=`curl -L $1 | grep -o -P '(?<=<title>).*(?=</title>)'`
TRANSCODEMP3="#transcode{acodec=mp3,ab=128,channels=2,samplerate=44100}:std{access=file,mux=raw,dst=output.mp3}"
PARAMS='-I dummy --no-sout-video --sout-audio --no-sout-rtp-sap --no-sout-standard-sap --ttl=1 --sout-keep --sout '$TRANSCODEMP3' '$1' vlc://quit'
PARAMSS='--sout "#transcode{acodec=mp3,ab=128,channels=2,samplerate=44100}:std{access=file,mux=raw,dst=output.mp3}" '$1' vlc://quit'
echo $PARAMS
vlc $PARAMS
mv output.mp3 "$TITLE.mp3"
