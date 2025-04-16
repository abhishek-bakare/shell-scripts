#!/bin/bash

######################################
# this shows how you can see status of the application/service and can be start or stop
######################################


function service() {
    service_active=$(sudo systemctl is-active $1)
    if [ service_active = "active" ]
    then
        echo "$1 service is active"
    else
        echo "$1 service is disabled"
        read -p "Do you want to install it? Type Y or N" package
        if [[ $package = "Y" || $package = "y" ]]
        then
            apt update
            echo -e "\033[0;36mInstalling package $1\033[0m"
            sleep 2
            apt install $1 -y
            echo -e "\033[0;32mSuccessfully installed $1\033[0m"
        else
            echo -e "\e[31mExiting....\e[0m"   
            sleep 2
            exit
        fi    
    fi     
}

service