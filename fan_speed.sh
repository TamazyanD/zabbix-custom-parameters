#!/bin/bash

#Extracting fan speed
fan_speed=$(sensors | grep 'Exhaust' | awk '{print $3}')

#Output of the result
echo "$fan_speed"

# From the entire sensors output shown above, we only care about the line

#pplesmc-isa-0300
#Adapter: ISA adapter
#Exhaust  :   1997 RPM  (min = 2000 RPM, max = 6200 RPM)
#TA0P:         +47.0°C  
#TB0T:         +33.5°C  
#TB1T:         +33.5°C  
#TB2T:         +32.0°C  
#TC0E:         +74.0°C  
#TC0F:         +76.2°C  
#TC0J:          +2.0°C  
#TC0P:         +64.5°C  
#TC1C:         +73.0°C  
#TC2C:         +72.0°C  
#TCGC:         +72.0°C  
#TCSA:         +70.0°C  
#TCTD:          -0.2°C  
#TCXC:         +73.0°C  
#TG1D:         +76.2°C  
#TM0P:         +44.5°C  
#TM0S:         +58.0°C  
#TPCD:         +74.0°C  
#Th1H:         +54.2°C  
#Ts0P:         +31.2°C  
#Ts0S:         +45.5°C  

#coretemp-isa-0000
#Adapter: ISA adapter
#Package id 0:  +75.0°C  (high = +87.0°C, crit = +105.0°C)
#Core 0:        +75.0°C  (high = +87.0°C, crit = +105.0°C)
#Core 1:        +73.0°C  (high = +87.0°C, crit = +105.0°C)

#BAT0-acpi-0
#Adapter: ACPI interface
#in0:          12.30 V  
#temp:         +33.8°C  
#curr1:         0.00 A  (avg =  +0.00 A)

# labeled "#Exhaust :", which indicates the current CPU fan speed.
# This value is the key parameter we want to track.
# The script extracts only this fan speed value.
