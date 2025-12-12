Zabbix Custom Parameters

This repository contains custom user parameters for Zabbix Agent, providing extended monitoring capabilities for battery level, CPU temperature, fan speed, and power supply status.
Each script returns clean numeric output, making it fully compatible with Zabbix item processing.

1. battery_percentage.sh
Extracts the laptop battery percentage using ACPI.
Example output: 92

2. cpu_temp.sh
Reads CPU temperature from the sensors command.
Example output: 67


3. fan_speed.sh
Returns fan speed in RPM from hardware sensors.
Example output: 1997

4. power_supply_status.sh
Checks AC power status (plugged in or running on battery).
Example output:
1   # AC power online
0   # AC power offline

⚙️ Zabbix Agent Configuration
The file zabbix_agentd.d/custom_parameters.conf contains user parameters:

UserParameter=battery.percentage,/path/to/scripts/battery_percentage.sh
UserParameter=cpu.temp,/path/to/scripts/cpu_temp.sh
UserParameter=fan.speed,/path/to/scripts/fan_speed.sh
UserParameter=power.supply.status,/path/to/scripts/power_supply_status.sh

Replace /path/to/scripts/ with the actual directory path.
Restart Zabbix Agent:
sudo systemctl restart zabbix-agent

| Key                   | Type | Description                       |
| --------------------- | ---- | --------------------------------- |
| `battery.percentage`  | uint | Battery charge level (%)          |
| `cpu.temp`            | uint | CPU temperature (°C)              |
| `fan.speed`           | uint | Fan rotation speed (RPM)          |
| `power.supply.status` | uint | Power supply status (1=AC, 0=Bat) |


📌 Requirements
Zabbix Agent 5.0+
Installed packages:
acpi
lm-sensors


