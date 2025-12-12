# zabbix-custom-parameters
A collection of Linux shell scripts for custom Zabbix agent parameters, providing extended system monitoring capabilities.
 # Zabbix Custom Parameters for Linux

This repository contains a collection of Linux shell scripts designed to be used as custom Zabbix agent parameters.  
Each script provides a specific system metric that can be monitored through Zabbix using `UserParameter` definitions.

---

## 📌 Included Scripts

### 1. cpu_usage.sh
Returns the current total CPU usage percentage.

### 2. disk_free.sh
Outputs available disk space for a specified filesystem.

### 3. service_status.sh
Checks whether a given systemd service is running.

### 4. network_latency.sh
Measures network latency to a specified host using ICMP ping.

---

## 📂 How to Use

1. Copy the scripts to `/etc/zabbix/scripts/` and make them executable:
