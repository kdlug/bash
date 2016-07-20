#!/bin/bash

#DEBUG
for n in 1 2 3 4
do
	echo $n
exit 0

# we can check exit status
# 2 - missing  =
echo $?

# run
# sh -x 01.sh # syntax errors without runnong a script
# sh -n 01.sh  # syntax errors with runnong a script
# sh -v  01.sh # syntax errors with code list
