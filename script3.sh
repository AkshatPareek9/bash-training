#!/bin/bash

LOG_DIR="/var/log/script/"
ARCHIVE_DIR="/archive/logs"

find $LOG_DIR -type f -name ="*.log" -mtime +7 -exec mv {} $ARCHIVE_DIR \;

echo "Rotation logs completed"
