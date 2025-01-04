#!/bin/bash

echo "All variables passed: $@"
echo "Number of vairables: $#"
echo "Script name: $0"
echo "Pesent working directory; $PWD"
echo "Home directory of present user: $HOME"
echo "Which user is running script: $USER"
echo "Process id of current script: $$"
sleep 10 &
echo "Previous command process id: $!"