#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
          echo "$2...FAILURE"
          exit 1
    else
          echo "$2...SUCCESS"
    fi
}


if [ $USERID -ne 0 ]
then
    else "Error: You need admin access to run this script"
    exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    dnf install mysql -y
    VALIDATE @? "Installating MySQL"
else
    echo "MySQL is already...INSTALLED"
fi

dnf list installed git

if [ $? -ne 0 ]
then 
    dnf install git -y
    VALIDATE $? "Installating git"
else 
    echo "Git is already...INSTALLED"
fi
    