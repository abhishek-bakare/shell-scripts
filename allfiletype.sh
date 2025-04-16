#!/bin/bash
####################
# this script shows taking unlimited command line arguments & check below conditions
####################

file=$@
for i in $file
    do
    if [ -f "$i" ]
    then
    echo "$@ is a regular file"
    elif [ -d "$i" ]
        then
        echo "$i is a directory file"
    else
        echo "$i is another type of file"
    fi

ls -l $i
done