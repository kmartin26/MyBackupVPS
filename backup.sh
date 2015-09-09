#!/bin/bash
BACKUP_SRC="/root /etc /home /var/www"
BACKUP_DST="/tmp"
MYSQL_SERVER="127.0.0.1"
MYSQL_USER="mysqlusername"
MYSQL_PASS="mysqlpassword"
#VPS_ID="vpsidentifier"

# Stop editing here.
NOW=$(date +"%d.%m.%Y")
DESTFILE="$BACKUP_DST/$NOW.tgz"
#DESTFILE="$BACKUP_DST/$VPS_ID.$NOW.tgz

# Backup files.
mysqldump -u $MYSQL_USER -h $MYSQL_SERVER -p$MYSQL_PASS --all-databases > "$NOW-Databases.sql"
tar cfz "$DESTFILE" $BACKUP_SRC "$NOW-Databases.sql"

#upload to dropbox. make sure the following line points to the correct dropbox_uploader.sh location
/root/dropbox_uploader.sh upload "$DESTFILE" "$NOW.tgz"

#remove temporary files
rm -f "$NOW-Databases.sql" "$DESTFILE"
