#!/bin/sh

echo $(free -h | awk '/Mem:/ { printf(" %5s/%s \n", $3, $2) }')🔀$(free -h | awk '/Swap:/ { printf(" %5s/%s \n", $3, $2) }')
