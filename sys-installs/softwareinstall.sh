#!/bin/bash



if [[ $EUID -ne 0 ]]; then                                #picked from Matt Kijowski's dotfile. Checks if user is Root
   echo "This script must be run as root, exiting." 
   exit 1
fi

if [[ -n "'which apt-get'" || -n "'which apt'" ]]; then  # checks if Which apt/which apt-get is not null, which means it exists

   echo "This script will install Ansible to your Linux Distro. Would you like to continue?"
   echo "[Y/N](Please press 'y' for yes or 'n' for no)"
   read answer

   if [[ $answer = y ]]; then
      if [[ -n "'apt list --installed | grep ansible'" ]]; then
         apt update 
         apt install -y ansible                                # installs ansible silently

         ansible --help      
         exit 1
      fi
      echo "Ansible is already installed. Have a nice day!"
      exit 1
   fi
      echo "Run this script if you ever change your mind!"
      exit 1

fi
