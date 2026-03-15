#!/bin/sh 

echo $(pactl list sinks | grep '^[[:space:]]Volume:' | \
    head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')% $(amixer sget Master | awk '/Front Left:/ { print $6 }');
