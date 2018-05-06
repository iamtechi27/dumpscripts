#!/bin/bash

# set variables

# date variables
date=$(date -I)
# backup location variable
location="/mnt/backup/$(date +%Y)"

file="backup-$date.tar.gz"

# tar command to tmp
cd /home/iamtechi27
tar -vczf /tmp/$file .

# make sure that the backup directory exists
if [[ ! -d $location ]]; then
	mkdir -p $location 
fi

# on success, move it to the backup directory
mv /tmp/$file $location/
