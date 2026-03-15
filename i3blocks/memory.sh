#!/bin/sh

echo $(free -h --si | awk '/Mem:/ {m=$7} /Swap:/ {s=$4} END{printf("%s SWP: %s", m, s)}')
