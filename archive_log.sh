#!/bin/bash

##############################################
# this checks files are empty if then delete them, files not empty add .log ext & make a new tar
##############################################
tar -xvf archive.tar
for files in *
do
  if [[ "$files" == "script.sh" ]]
  then
  continue
  elif [[ -f $files && ! -s $files ]]    #-f regular file or not, -s check empty or not
  then
  rm $files
  fi
done

for file in *
do
    if [[ "$file" == "script.sh" ]] 
    then
    continue
    else
    mv $file $file".log"
    fi
done

tar -cvf archive2.tar --exclude="script.sh" ./*