#!/bin/bash

#######################################
# monitoring of specific resource
######################################

resource=$1
function resource() {
    reso=$(ps aux | grep "root" | grep "nginx" | awk '{print $4}' )
    echo ${reso[1]}
    if [ ${reso[1]} -gt 80 ]
    then
        pid=$(pgrep $1)
        kill $pid
    else
        echo "Within threshold"
    fi 

}

resource