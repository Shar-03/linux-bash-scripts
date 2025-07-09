#!/bin/bash

#Delete /tmp files older than 7 days

echo "Cleaning /tmp files older than 7 days..."
sudo find /tmp -type f -mtime +7 -exec rm -f {} \;

echo "Cleanup complete."
