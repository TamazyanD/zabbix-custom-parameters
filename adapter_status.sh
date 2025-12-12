#!/bin/bash

# Checking the adapter status
adapter_status=$(acpi -a | awk '{print $3}')

# If the adapter is online, output 1, otherwise output 0
if [ "$adapter_status" == "on-line" ]; then
    echo "1"
else
    echo "0"
fi
