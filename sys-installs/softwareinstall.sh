#!/bin/bash



if [[ $EUID -ne 0 ]]; then                                #picked from Matt Kijowski's dotfile. Checks if user is Root
   echo "This script must be run as root, exiting." 
   exit 1
fi 

if [[ -n "'which apt-get'" || -n "'which apt'" ]]; then  # checks if Which apt/which apt-get is not null, which means it exists

   echo "This script will install Anaconda to your Linux Distro. Would you like to continue?"
   echo "[Y/N](Please press 'y' for yes or 'n' for no)"
   read answer

   if [[ $answer = y ]]; then
      if [[ -n "'conda list'" ]]; then
         apt update 
         apt install -y python3-dev python3-pip python3-setuptools # installs python tools for anaconda
         curl -0 https://repo.anaconda.com/archive/Anaconda3-2024.10-1-Linux-x86_64.sh    # installs Anaconda silently
         bash ~/Anaconda3-2024.10-1-Linux-x86_64.sh -b -p $HOME/anaconda3 # installs Anaconda with assumption you agree to EULA
         # and sets Anaconda directory in home, wherever that is         
         source ~/anaconda3/bin/activate
         conda init --all #intitializes Anaconda and will implement on next session
            

         exit 1
      fi
      echo "Anaconda is already installed. Have a nice day!"
      exit 1
   fi
      echo "Run this script if you ever change your mind!"
      exit 1

fi


  

#Sources:
# https://www.2daygeek.com/find-out-if-package-is-installed-or-not-in-linux-unix/
# https://www.anaconda.com/docs/getting-started/anaconda/install#macos-linux-installation:manual-shell-initialization
# https://www.anaconda.com/docs/getting-started/anaconda/advanced-install/silent-mode#mac-os-linux
# https://github.com/mkijowski/dotfiles/blob/master/install.sh
# 