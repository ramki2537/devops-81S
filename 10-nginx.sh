#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
   echo "Error: you should have sudo access to execute this script"
   exit 1
fi

dnf list installed nginx

if [ $? -ne 0 ]
then 
    dnf install nginx
    if [  $? -ne 0]
    then
        echo "Nginx package installation....FAILED"
        exit 1
    else
        echo "Nginx package installation...SUCCESS"
    fi

else
   echo "Nginx pakcage already....INSTALLED"
fi