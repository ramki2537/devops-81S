#!/bin/bash
echo "Enter values:"
read value1


echo "All variables passed: $@"
echo "Number of variables passed to the script: $#"
echo "Number of variables passed in single string: $*"
echo "Current script process id: $$"
sleep 10 &
echo "Previous command process id: $!"
echo "Previous command execution status: $?"
echo "Current script name: $0"
echo "Script executing by: $USER"
echo "Home directory of present user: $HOME"
echo "Present working directory: $PWD"

