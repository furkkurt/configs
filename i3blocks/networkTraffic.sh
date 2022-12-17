#!/bin/sh

echo ⬇$(sar -n DEV 1 1 | awk 'ENDFILE{ print $5 }') ⬆️$(sar -n DEV 1 1 | awk 'ENDFILE{ print $6 }')
