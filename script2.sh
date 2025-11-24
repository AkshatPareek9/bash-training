#!/bin/bash

DBNAME="mydatabase"
DBUSER="dbuser"
DBPASS="dbpass"
BACKUP_DIR="/backup/db"

mysqldump -u $DBUSER -p$DBPASS $DBNAME > $BACKUP_DIR/db_backup_$(date +%F).sql

echo "Database backup completed"
