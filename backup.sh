#!/bin/bash

#Backup a directory into a timestamped .tar.gz archive

SOURCE_DIR="$1"
DEST_DIR="$2"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

if [[ -z "$SOURCE_DIR" || -z "$DEST_DIR" ]]; then
	echo "Usage: $0 <source_dir> <destination_dir>"
	exit 1
fi

ARCHIVE_NAME="backup_${TIMESTAMP}.tar.gz"
tar -czf "$DEST_DIR/$ARCHIVE_NAME" "$SOURCE_DIR"

echo "Backup of $SOURCE_DIR completed at $DEST_DIR/$ARCHIVE_NAME"
