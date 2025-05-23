#!/bin/bash

DBUSERNAME="credential_username"
DBPASSWORD="credential_password"
HOST="localhost"
DB_NAME="credential_database"
BACKUP_DIRECTORY="C:\Program Files"

mkdir -p "$BACKUP_DIRECTORY"
BACKUP_FILE="$BACKUP_DIRECTORY/${DB_NAME}_backup_$(date +'%Y%m%d_%H%M%S').sql"
mysqldump -u "$DBUSERNAME" -p"$DBPASSWORD" -h "$HOST" "$DB_NAME" > "$BACKUP_FILE"

if [ $? -eq 0 ]; then
    echo "Backup successful! File saved as: $BACKUP_FILE"
else
    echo "Backup failed!"
fi
