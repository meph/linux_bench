#!/bin/bash
echo "Collecting Hardware Information..."

# Collect hardware details
sudo lshw -short > hardware_summary.txt

# Collect detailed CPU information
lscpu > cpu_info.txt

# Collect memory information
sudo dmidecode --type memory > memory_info.txt

# Collect disk information
lsblk -o NAME,SIZE,TYPE,MOUNTPOINT > disk_info.txt

# Collect network interface information
ip addr show > network_info.txt

echo "Hardware Information Collected."