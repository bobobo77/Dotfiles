#!/bin/bash

#Instruction to ensure we the bashrc file before appending
if [[ $EUID -ne 0 ]]; then                                #picked from Matt Kijowski's dotfile. Checks if user is Root
   echo "This script must be run as root, exiting." 
   exit 1
fi
cp ~/.bashrc ~/.bashrcBackup

cat .bashrc >> ~/.bashrc

source ~/.bashrc
