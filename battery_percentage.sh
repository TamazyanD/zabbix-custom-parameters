#!/bin/bash

#Extracting battery percentage
battery_percentage=$(acpi -b | grep -oP '\d+(?=%)')

#Output of the result
echo "$battery_percentage"
