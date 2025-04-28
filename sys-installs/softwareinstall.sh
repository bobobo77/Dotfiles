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


  

#Sources:
# https://www.2daygeek.com/find-out-if-package-is-installed-or-not-in-linux-unix/
# https://docs.ansible.com/ansible/latest/cli/ansible-playbook.html 
# https://github.com/mkijowski/dotfiles/blob/master/install.sh
# https://stackoverflow.com/questions/1298066/how-can-i-check-if-a-package-is-installed-and-install-it-if-not