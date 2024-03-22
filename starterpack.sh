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
		echo "Installed all packages"
		
		curl https://repo.anaconda.com/archive/Anaconda3-2024.02-1-Linux-x86_64.sh -O
		
		bash ~/Downloads/Anaconda3-2024.02-1-Linux-x86_64.sh
		echo "downloaded Anaconda"
	else 
		echo "Unable to find apt"
		exit 1
	fi
	anaconda_setup
	git_config
	
else
    echo "You are not root." 1>&2
    exit 1
fi

anaconda_setup(){
	curl https://repo.anaconda.com/archive/Anaconda3-2024.02-1-Linux-x86_64.sh -O
		
		bash ~/Downloads/Anaconda3-2024.02-1-Linux-x86_64.sh
		echo "downloaded Anaconda"
}

git_config() {                                          # picked this method from Matt Kajowski
	echo "Setting git configs"
  git config --global user.email "bobo77b0.7@gmail.com"
  git config --global user.name "William Harvey"
  git config --global core.editor vim 
}

export -f git_config

vundle_setup() {
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	

}