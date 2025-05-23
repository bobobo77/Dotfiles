#!/bin/bash

alias home="cd ~"
alias l='ls -lAh'


# copied directly from "The Ultimate Badass .bashrc file"
# Copy file with a progress bar

cpp()
{
	set -e
	strace -q -ewrite cp -- "${1}" "${2}" 2>&1 \
	| awk '{
	count += $NF
	if (count % 10 == 0) {
		percent = count / total_size * 100
		printf "%3d%% [", percent
		for (i=0;i<=percent;i++)
			printf "="
			printf ">"
			for (i=percent;i<100;i++)
				printf " "
				printf "]\r"
			}
		}
	END { print "" }' total_size=$(stat -c '%s' "${1}") count=0
}




#Source :
# https://gist.github.com/zachbrowne/8bc414c9f30192067831fafebd14255c
# https://github.com/vikaskyadav/awesome-bash-alias
#
#
#
#
#