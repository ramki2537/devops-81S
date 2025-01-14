#!/bin/bash

R="\e[32m"
G="\e[31m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/root/devops-81S/logs"
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
  echo -e $R "Error: Need admin access to perform this script"
  exit 1
fi

VALIDATE(){
if [ $1 -ne 0 ]
then
   echo "$2 installation is....$R FAILED $N"
else
   echo "$2 installation is....$G SUCCESS $N"
fi
}


for package in $@
do
   dnf list installed $package &>>$LOGS_FOLDER
   if [ $? -ne 0 ]
   then 
      dnf install $package -y &>>$LOGS_FOLDER
      VALIDATE $? "$package"
   else
     echo "$package software already...INSTALLED"
   fi
done