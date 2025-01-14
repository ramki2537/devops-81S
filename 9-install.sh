#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]
then
   echo -e "$G Error: You dont have sufficient access to perform this task $N"
   exit 1
fi

VALIDATE(){
if [ $1 -ne 0 ]
then
   echo -e "$2 installation...$R FAILED $N"
else
   echo -e "$2 installation...$G SUCCESS $N"
fi
}

dnf list installed nginx

if [ $? -ne 0 ]
then 
   dnf install nginx -y
   VALIDATE $? "nginx"
else
   echo "nginx software already....$Y INSTALLED $N"
fi