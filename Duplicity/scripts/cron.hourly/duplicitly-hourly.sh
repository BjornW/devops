#!/bin/bash

# Author: Bjorn Wijers, <burobjorn@burobjorn.nl>
# Website: https://burobjorn.nl
# Script URL: https://github.com/BjornW/devops
# Description: 
# 
# This file is meant to be called from an hourly cronjob and placed in /etc/cron.hourly on a Debian based system
# 
# By default it will backup the source without encryption and remove backups older than 48 hours


# Change the configuration below according to your needs 
# --------------------

# By default don't use encryption. 
# NB: Set to empty for using with encryption
ENCRYPTION='--no-encryption'; # don't use encryption      

# By default remove backup sets older than 48 hours
# NB: h = hours 
REMOVE_OLDER_THAN_TIME='48h'        

# path of the directory to be backupped
SOURCE=''

# Path of where to put the backup
# for local do not forget to prepend the path with the file protocol, e.g. file://
DESTINATION=''  

# Path to the logfile
LOGFILE='/var/log/duplicity.hourly.log'

duplicity $ENCRYPTION $SOURCE $DESTINATION --log-file $LOGFILE 
duplicity remove-older-than $REMOVE_OLDER_THAN_TIME --force $DESTINATION
