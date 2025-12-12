#!/bin/bash

#Extracting fan speed
fan_speed=$(sensors | grep 'Exhaust' | awk '{print $3}')

#Output of the result
echo "$fan_speed"
