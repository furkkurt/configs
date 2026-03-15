#!/bin/sh

ACPI_RES=$(acpi -b)
ACPI_CODE=$?

if [ $ACPI_CODE -eq 0 ]; then
    BAT_LEVEL_ALL=$(echo "$ACPI_RES" | grep -v "unavailable" | grep -E -o "[0-9][0-9]?[0-9]?%")
    BAT_LEVEL=$(echo "$BAT_LEVEL_ALL" | awk -F"%" 'BEGIN{tot=0;i=0} {i++; tot+=$1} END{if(i>0) printf("%d%%\n", tot/i)}')
    TIME_LEFT=$(echo "$ACPI_RES" | grep -v "unavailable" | grep -E -o "[0-9]{2}:[0-9]{2}:[0-9]{2}" | head -n1)
    IS_CHARGING=$(echo "$ACPI_RES" | grep -v "unavailable" | awk 'NR==1{gsub(/,/, "", $3); print $3}')

    if [ -z "$TIME_LEFT" ]; then
        TIME_LEFT="00:00:00"
    fi

    TIME_LEFT=$(echo "$TIME_LEFT" | cut -c1-5)

    if [ "$IS_CHARGING" = "Charging" ]; then
        STATUS="AC"
    else
        STATUS="BAT"
    fi

    # Full text
    echo "$BAT_LEVEL | $STATUS | $TIME_LEFT"

    # Short text
    echo "$BAT_LEVEL"

    # Color
    if [ "$IS_CHARGING" = "Charging" ]; then
        # dark blue, readable on light gray
        echo "#204a87"
    else
        if [ "${BAT_LEVEL%?}" -le 20 ]; then
            # dark red
            echo "#a40000"
        elif [ "${BAT_LEVEL%?}" -le 40 ]; then
            # dark brown/orange warning
            echo "#8f5902"
        else
            # normal black
            echo "#000000"
        fi
    fi
fi
