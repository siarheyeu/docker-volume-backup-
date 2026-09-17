#!/bin/sh
set -e

BACKUP_FILE=$1

tar -xzf "$BACKUP_FILE" -C "/volume"
echo "Restore completed from: $BACKUP_FILE"
