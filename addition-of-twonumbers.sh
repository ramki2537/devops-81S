#!/bin/bash

value1=$1
value2=$2
sum=$((value1+value2))
timestamp=$(date)

read -p echo "This scrip performed by: name"

echo "This script performed on: $timestamp"
echo "addition of $value1 and $value2 is : $sum