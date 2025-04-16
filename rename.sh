#!/bin/bash

################################
# this shows rename files with extension .jpg with datename.jpg
################################

function rename() {
    #fi=$(find . -name ".jpg")
    fi=$(ls | grep ".jpg")
    for files in $fi
    do
        a=$(date +%Y-%m-%d"-"$files | cut -f 1 -d '.')
        mv $files $a
        echo "All .jpg files are renamed with $a"
    done 
}

rename




# one more simple way to do it
day=$(date +%F)
cd /home/Pictures
for files in *.png
 do
    mv $files ${day}-${files}
 done