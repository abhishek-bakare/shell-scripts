#!/bin/bash

######################################
# actions performed on the connected passwordless servers
######################################


servers=("serv1" "serv2" "serv3" "serv4")

function tasks(){
for server in ${servers[@]}
    do
        scp "app.tar.gz" "user@$server:/path/to/destination/"
        ssh "user@$server" "tar -xzvf /path/to/destination/app.tar.gz -C /path/to/app"
        # add steps
done  
}

tasks