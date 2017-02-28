#!/bin/bash
# suitecrm-script-backup
# A Backup Script for SuiteCRM by @ambientelivre
# The project is open source in https://github.com/ambientelivre/suitecrm-script-backup
# contrib!
# Create by marcio@ambientelivre.com.br


# Dir install SuiteCRM
SUITECRM_DIR=/var/www/html

#User access SuiteCRM database
DATABASE_USER=root

# Passwd for user access suitecrm database
DATABASE_PWD=sejalivre

# Name of the Database SuiteCRM
DATABASE_NAME=suitecrm

# Path to destination for backup file
BACKUP_PATH=/home/ambientelivre
DATE_NOW=$(date +%d-%m-%y)

cd $BACKUP_PATH
mysqldump -u$DATABASE_USER -p$DATABASE_PWD $DATABASE_NAME > $BACKUP_PATH/backup_$DATE_NOW.sql
tar -pczvf $BACKUP_PATH/suitecrm-app-and-data-backup_$DATE_NOW.tar.gz $SUITECRM_DIR $BACKUP_PATH/backup_$DATE_NOW.sql
rm $BACKUP_PATH/backup_$DATE_NOW.sql
echo "Backup finish!"
