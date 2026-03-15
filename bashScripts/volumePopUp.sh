#!/bin/bash


msg=""
volLvl=$(pactl list sinks | grep '^[[:space:]]Volume:' | \head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')
for (( ; ; ))
  do
    killall dunst
    newVolLvl=$(pactl list sinks | grep '^[[:space:]]Volume:' | \head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')
    if [ $volLvl != $newVolLvl ]; then
      volLvl=$(pactl list sinks | grep '^[[:space:]]Volume:' | \head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')
      msg=""
      for i in $( eval echo {0..$(( ($volLvl - 1) / 10 ))} )
      do
        msg+="■"
      done
      notify-send.sh $(pactl list sinks | grep '^[[:space:]]Volume:' | \head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,') + $msg
    fi
    sleep 1
  done
