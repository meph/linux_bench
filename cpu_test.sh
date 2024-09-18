#!/bin/bash
echo "Starting CPU Performance and Stability Test..."

# Run a CPU stress test for 5 minutes
stress-ng --cpu 0 --timeout 300s --metrics-brief

# CPU Benchmark using sysbench
sysbench cpu --cpu-max-prime=20000 run

echo "CPU Test Completed."