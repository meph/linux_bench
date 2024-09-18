#!/bin/bash
echo "Starting System Stability Test..."

# Stress CPU, memory, and I/O for 15 minutes
stress-ng --cpu 4 --io 2 --vm 2 --vm-bytes 50% --timeout 900s --metrics-brief

echo "Stability Test Completed."