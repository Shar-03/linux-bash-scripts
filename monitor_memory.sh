#!/bin/bash

#Monitor system memory and save to a log file

LOG_FILE="memory_log.txt"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

echo "[$DATE] Memory Usage:" >> "$LOG_FILE"
free -h >> "$LOG_FILE"
echo "-------------------------" >> "$LOG_FILE"

echo "Memory usage logged in $LOG_FILE"
