#!/bin/bash

read -p "Please enter first value: " value1
read -p "Please enter second value: " value2

time=$( date )
sum=$(( $value1+$value2 ))

echo "Script executed on: $time"
echo " addition of $value1 and $value2 is: $sum"