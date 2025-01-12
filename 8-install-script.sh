#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 0 ]
then
  echo "Admin check pass and proceeding installation"
else
  echo "Error: You need admin access to perform this task"
  exit 1
fi

dnf list installed mysql

if [ $? -eq 0 ]
then
   echo "Mysql software already exisist in machine"
   exit 1
else 
   dnf install mysql -y
   if [ $? -eq 0 ]
   then
     echo "Installation for mysql success"
   else
     echo "Installation of mysql failed"
     exit 1
   fi
fi