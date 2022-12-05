#!/bin/sh

exec ansiweather -l istanbul | awk '{ print $5 $6 " 💧" $17 }'
