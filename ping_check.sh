#!/bin/bash

#Ping a host and log the result

HOST="$1"
LOG_FILE="ping_status.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

if [[ -z "$HOST" ]]; then
	echo "Usage: $0 <hostname_or_ip>"
	exit 1
fi

if ping -c 1 "$HOST" &> /dev/null; then
	echo "[$DATE] $HOST is reachable" >> "$LOG_FILE"
else
	echo "[$DATE] $HOST is unreachable" >> "$LOG_FILE"
fi

echo "Ping status written to $LOG_FILE"
