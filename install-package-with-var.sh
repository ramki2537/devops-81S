#!/bin/bash

read -p "Enter package name to install: " package

echo "Installing $package"

dnf install $package -y &>>/var/log/ramalogs/package.log

echo "Completed $package installation "