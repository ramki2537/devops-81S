#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
          echo -e "$2...$R FAILURE"
          exit 1
    else
          echo -e "$2...$G SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Error: You need admin access to run this script"
    exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    dnf install mysql -y
    VALIDATE @? "Installating MySQL"
else
    echo -e "MySQL is already...$Y INSTALLED"
fi

dnf list installed git

if [ $? -ne 0 ]
then 
    dnf install git -y
    VALIDATE $? "Installating git"
else 
    echo -e "Git is already...$Y INSTALLED"
fi

dnf list installed nginx

if [ $? -ne 0 ]
then
    dnf install nginx -y
    VALIDATE @? "Installating nginx"
else
    echo -e "MySQL is already...$Y INSTALLED"
fi