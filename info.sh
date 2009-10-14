#!/bin/sh
FAN=$(awk '{print $2}' /proc/acpi/fan/FN00/state)
TEMP=$(awk '{print $2}' /proc/acpi/thermal_zone/THRM/temperature)
FREQ=$(cpufreq-info | awk '/current CPU frequency/ {print $5"MHz"}')
echo -n "$FREQ $TEMP $FAN"
