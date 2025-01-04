#!/bin/bash

read -p "Enter your name: " person
echo "This script performed by: $person"


value1=$1
value2=$2
sum=$((value1+value2))
timestamp=$(date)

echo "This script performed on: $timestamp"
echo "addition of $value1 and $value2 is : $sum"