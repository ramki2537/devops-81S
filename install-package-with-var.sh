#!/bin/bash

echo "Enter package name to install: " package
read -p package

echo "Installing $package"

dnf install $package

echo "Completed installation $package"