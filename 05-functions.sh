#!/bin/bash

USERID=$(id -u)

if [ USERID -ne 0]
then 
    echo "Please run this script with root command"
    exit 1
else
    echo "Script runned by root user"
fi

VALIDATE() {
    if [ $1 -eq 0 ]
    then 
        echo "installing $2 is SUCCESS"
    else
        echo "installing $2 is FAILURE"
        exit 1
    fi        
}

dnf list installed nginx

if [ $? -ne 0 ]
then
    echo "Nginx is not installed.... going to install it"
    dnf install nginx
    VALIDATE $? nginx
else
    echo "Nginx is already installed"
fi            