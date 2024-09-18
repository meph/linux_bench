#!/bin/bash
echo "Starting Disk I/O Performance and Health Test..."

# Identify disks (modify as needed)
DISK="/dev/sda"

# Run SMART health check
sudo smartctl -H $DISK

# Run a detailed SMART self-test
sudo smartctl --test=short $DISK

# Wait for the test to complete (usually 2 minutes)
sleep 120

# Display SMART test results
sudo smartctl -l selftest $DISK

# Disk I/O benchmark using fio
fio --name=seqwrite --filename=testfile --rw=write --bs=1m --size=1G --numjobs=1 --direct=1
fio --name=seqread --filename=testfile --rw=read --bs=1m --size=1G --numjobs=1 --direct=1

# Clean up test file
rm testfile

echo "Disk Test Completed."