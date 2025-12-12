#!/bin/bash

# Checking the power supply status
adapter_status=$(acpi -a | awk '{print $3}')

# If the adapter is online, output 1, otherwise output 0
if [ "$adapter_status" == "on-line" ]; then
    echo "1"
else
    echo "0"
fi

#The script executes the acpi -a command. 
#The output is “Adapter 0: on-line” if external power is connected, and “Adapter 0: off-line” if it is not.
#The script then extracts only the binary status of the adapter: 0 or 1.


