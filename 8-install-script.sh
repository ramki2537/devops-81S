#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 0 ]
then
  echo "Admin check pass and proceeding installation"
else
  echo "Error: You need admin access to perform this task"
fi

