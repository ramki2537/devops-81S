#!/bin/bash

read -p "Enter package name to install: " package

echo "Installing $package"

dnf install $package -y

echo "Completed installation $package"