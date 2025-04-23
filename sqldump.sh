#!/bin/bash

#############################################
# taking sqldump backup
#############################################
dir="/backup/to/savehere"
db_user="username"
db_pass="password"
db_name="dbname"
timestamps=$(date +"%Y-%m-%d-%H%M")
sqldump -u "$db_user" -p "$db_pass" "$db_name" | gzip > "$dir/db_backup_$timestamps.sql.gz
