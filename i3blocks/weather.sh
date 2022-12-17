#!/bin/sh

exec ansiweather -l elazığ | awk '{ print $5 $6 " 💧 " $17 }'
