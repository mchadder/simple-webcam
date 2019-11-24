#!/bin/bash
ROOT=/var/www/captures
SLEEP_TIME=10
JPEG_QUALITY=85

while true
do
  for INDEX in 1 2 3 4 5
  do
    FILE=$ROOT/capture-$INDEX.jpeg

    fswebcam -q -r 640x480 --jpeg $JPEG_QUALITY -D 1 $FILE
    sleep $SLEEP_TIME
  done
done

