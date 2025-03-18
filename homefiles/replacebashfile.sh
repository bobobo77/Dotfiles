#!/bin/bash

#Instruction to ensure we the bashrc file before appending
cp ~/.bashrc ~/.bashrcBackup

cat .bashrc >> ~/.bashrc

source ~/.bashrc
