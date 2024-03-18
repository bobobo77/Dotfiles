#!/bin/bash

if [[ "$(id -u)" -eq 0 ]]; then
    echo "Script is running as root"
	
	echo $(which apt)
	if [[ -n "$(which apt)"]]; then
		echo "apt is installed properly"
		apt install update     	# I do these by default
		apt install upgrade		# I do this by default to ensure the linux ditro is up to date with commands
		apt install -y \
			dnsutils \
			nmap \
			
	else 
		echo "Unable to find apt"
		exit
	fi	
else
    echo "You are not root." 1>&2
    exit
fi
