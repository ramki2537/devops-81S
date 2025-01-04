#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
    echo "Error: you mush have admin previlges to run this script"
    exit 1  # to exit code due to insufficient previges
fi

dnf list installed mysql 

if [ $? -ne 0 ]
then 
    dnf install mysql -y
    if [ $? -ne 0 ]
    then 
    echo "MySQL package installation...FAILURE"
    exit 1
    else
    echo "MySQL package installation...SUCCESS"
    fi
else 
    echo "MySQL package already.....INSTALLED"
fi

# git installation
dnf lis installed git

if [ $? -ne 0 ]
then
     dnf install git -y
     if [ $? -ne 0 ]
     then
        echo "Git package installation....FAILURE"
        exit 1
     else
        echo "Git package installation....SUCCESS"
     fi
else
    echo "Git package already....INSTALLED"
fi




















dnf install git -y

if [ $? -ne 0 ]
then 
    echo "Git package installation...FAILED"
    exit 1
else
    echo "Git package installation...SUCCESS"
fi