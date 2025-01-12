#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Error: You need admin previldues to peform this task"
    exit 1
fi

dnf list installed nginx

if [ $? -ne 0 ]
then
    dnf install nginx -y
    if [ $? -ne 0 ]
    then
      echo "Installation of nginx....FAILED"
      exit 1
    else
      echo "Installation of nginx....SUCCESS"
    fi
else
   echo "Nginx already installed in this machine"
fi