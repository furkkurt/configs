#!/bin/sh 

echo $(df -h / | awk '/\//{ print $4 }')/$(df -h /dev/nvme0n1p3 | awk '/^\/dev/ { print $4 }')
