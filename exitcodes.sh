#!/bin/bash

######################################
# this shows about exit codes
######################################

cat /etc/shadow

if [ $? -eq 0 ]
    then
    echo "Successed"
    exit 0
else
    echo "Command failed"
    exit 1
fi    
