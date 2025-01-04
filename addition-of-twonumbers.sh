#!/bin/bash

echo "Enter your name: "
echo "Enter value number 1: "
echo "Enter value number 2: "

read person value1 value2

sum=$((value1+value2))
timestamp=$(date)

echo "This script performed by: $person"
echo "This script performed on: $timestamp"
echo "addition of $value1 and $value2 is : $sum"