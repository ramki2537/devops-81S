#!/bin/bash

echo "Enter person and value1 and value2: "

read -p person value1 value2

sum=$((value1+value2))
timestamp=$(date)

echo "This script performed by: $person"
echo "This script performed on: $timestamp"
echo "addition of $value1 and $value2 is : $sum"