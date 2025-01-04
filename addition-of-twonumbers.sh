#!/bin/bash

read -s -p "Enter your name: " person
echo "This script performed by: $person"

read -p "Enter value number 1: " value1
read -p "Enter value number 2: " value2

sum=$((value1+value2))
timestamp=$(date)

echo "This script performed on: $timestamp"
echo "addition of $value1 and $value2 is : $sum"