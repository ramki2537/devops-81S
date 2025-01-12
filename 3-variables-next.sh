#!/bin/bash

read -p "Please enter first value: " value1
read -p "Please enter second value: " value2

time=$( date | awk -F " " '{print$1F}')
sum=$(( $value1+$value2 ))

echo "Script executed on: $time"
echo " addition of $value1 and $value2 is: $sum"