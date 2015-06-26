#!/bin/bash

if [ -z "$1" ]
    then
    	DIRECTORY='/home/satyarth/media'
    else
        DIRECTORY=$1
fi

EXTENSION="avi\|mkv"
FILE=$(cd "$DIRECTORY"; find * | grep ${EXTENSION}$ | shuf -n 1)
PATH="$DIRECTORY/$FILE"
/usr/bin/vlc "$PATH" &
