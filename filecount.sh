#!/bin/bash

#############################################
# code shows a function which count no of files present
#############################################
count=0
function file_count(){
    directory=$1
    path=$(ls $1)
    for no in $path
    do
        echo $no
        count=$(( $count + 1 ))
    done
    echo "Total number of files is $count"
}

file_count $directory