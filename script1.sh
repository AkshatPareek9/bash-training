#!/bin/bash

LOG_DIR="/var/log/script/"
BACKUP_DIR="/backup/logs"

find $LOG_DIR -type f -mtime +7 -exec tar -cvzf $BACKUP_DIR/log_backup_$(date +%F).tar {} \; -exec rm {} \;

echo "Backup completed"
