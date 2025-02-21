#!/bin/bash
    #Used https://github.com/VundleVim/Vundle.vim?tab=readme-ov-file to do a majority of what you see here
    sudo apt install -y update \
        vim #This should install vim with the update. If not, I expressly wrote it in just to be sure in case Vim is not on the basic machine

    mkdir -p ~/.vim/bundle 
    #made the directories for vundle

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    # added Vundle

    cp .vimrc ~/.vimrc
    #copying the .vimrc from the repo file because it doesn't like to be made on default

    vim +PluginInstall +qall
    #this activates the .vimrc 
