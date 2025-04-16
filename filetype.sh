#!/bin/bash

###########################
# for taking inout as commanline argument chang file to $1
###########################
read -p "Enter file name: " file
if [ -f "$file" ]
    then
    echo "$file is a regular file"
elif [ -d "$file" ]
    then
    echo "$file is a directory file"
else
    echo "$file is another type of file"
fi
ls -l $file
