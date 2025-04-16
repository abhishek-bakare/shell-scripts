#!/bin/bash

########################################
# this script will rename based on user inputs with extensions to a specific file
########################################

function rename_2() {
    day=$(date +%F)
    #cd /home/Pictures
    read -p "Enter the extension: " extension
    read -p "Enter prefix you want to use or hit enter only: " input
    #for in in $input
    #do
    for files in $input.$extension
    do
        if [ -z $input ]
        then
            echo "No prefix entered"
        else
            echo "Renaming ${day}-${files}"-"$files to $input"
            mv $input.$extension ${day}-${files} 
        fi    
    done
    #done
}

rename_2