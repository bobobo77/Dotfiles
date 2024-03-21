#!/bin/bash

if [[ "$(id -u)" -eq 0 ]]; then
    echo "Script is running as root"
	
	echo $(which apt)
	if [[ -n "$(which apt)" ]]; then
		echo "apt is installed properly"
		apt install update     	# I do these by default
		apt install upgrade		# I do this by default to ensure the linux ditro is up to date with commands
		apt install -y \
			dnsutils \
			nmap \
			libgl1-mesa-glx \
			libegl1-mesa \
			libxrandr2 \
			libxrandr2 \
			libxss1 \
			libxcursor1 \
			libxcomposite1 \
			libasound2 \
			libxi6 \
			libxtst6 \
			python3 \
			python3-pip
		curl -O https://repo.anaconda.com/archive/Anaconda3-2024.02-1-Linux-x86_64.sh
		bash ~/Downloads/Anaconda3-2024.02-1-Linux-x86_64.sh
	else 
		echo "Unable to find apt"
		exit 1
	fi	
else
    echo "You are not root." 1>&2
    exit 1
fi

git_config() {                                          # picked this method from Matt Kajowski
  git config --global user.email "bobo77b0.7@gmail.com"
  git config --global user.name "William Harvey"
  git config --global core.editor vim 
}

export -f git_config
