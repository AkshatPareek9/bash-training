#!/bin/bash

LOG_DIR="/var/log/script/"
RETENTION_PERIOD=30
ARCHIVE_DIR="/archive/logs"

find $LOG_DIR -type f -name "*.log" -mtime +${RETENTION_PERIOD} -exec gzip {} \;

find $LOG_DIR -type f -name "*.log.gz" -mtime +${RETENTION_PERIOD} -exec mv {} $ARCHIVE_DIR \;

echo "Compress and Archive old logs completed"
