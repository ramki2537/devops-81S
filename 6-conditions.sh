#!/bin/bash

read -p "Enter value: " value1

if [ $value1 -gt 69 ]
then
  echo "Given number is greater than 69"
else
  echo "Given number is equal or less than 69"
fi