#!/bin/bash
path=$(pwd)"/hotname.sh"

if [ -e "$path" ]
then 
echo "$path passwords are enabled."
fi

if [ -x "$path" ]
    then
        echo "You have permissions to edit $path”
    else
        echo "You do NOT have permissions to edit $path"
fi



