# suitecrm-script-backup
A Backup Script for SuiteCRM by @ambientelivre
The project is open source in https://github.com/ambientelivre/suitecrm-script-backup
contrib!
Create by marcio@ambientelivre.com.br


### Mode Use in Crontab
Sample of Backup in 01:00AM

exec crontab -e

edit:
#backup suiteCRM base + files

01 00 * * * cd /var/www/html/suitecrm-script-backup; sh suitebackup.sh
