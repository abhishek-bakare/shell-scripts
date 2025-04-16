#!/bin/bash

###########################
# this shows if it is a directory then exit with 1 exit status if another type exit 2 status
###########################
file=$1
if [ -f "$file" ]
    then
    echo "$file is a regular file"
    exit 0
elif [ -d "$file" ]
    then
    echo "$file is a directory file"
    exit 1
else
    echo "$file is another type of file"
    exit 2
fi