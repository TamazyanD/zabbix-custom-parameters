#!/bin/bash

#Extracting battery percentage
battery_percentage=$(acpi -b | grep -oP '\d+(?=%)')

#Output of the result
echo "$battery_percentage"

#ACPI output is very simple, as shown below. 
#The script just extracts the battery percentage:
#Battery 0: Full, 92%
