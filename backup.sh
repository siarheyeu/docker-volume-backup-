#!/bin/sh
set -e

VOLUME_NAME=$1
BACKUP_FILE=$2

tar -czf "$BACKUP_FILE" -C "/volume" .
echo "Backup completed: $BACKUP_FILE"
