#!/bin/bash

########################
# this shows if log file exceeds its size limit then generate new file for logs
########################

logfile="/abhi/abc.txt"
maxsize=1000000    #1mb

function log_file() {

if [ $(wc -c < "$logfile") -gt $maxsize ]
    then
    mv "$logfile" "$logfile.old"
    touch "$logfile"
else
    echo "File size is within maxsize"    
fi  
}

log_file
