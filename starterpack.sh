#!/bin/bash

if [[ "$(id -u)" -eq 0 ]]; then
    echo "Script is running as root"

else
    echo "You are not root." 1>&2
    exit
fi
