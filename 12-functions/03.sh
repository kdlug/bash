#!/bin/bash

ARGS=1
E_BADARGS=85
FILE=/etc/passwd

pattern=$1 # pattern searched in the file

if [ $# -ne "$ARGS" ] # check params
then
	echo "Usage: `basename $0` USERNAME"
	exit $E_BADARGS
fi

# get real name from the passwd file
get_real_name()
{
	#reading from a file for a certain pattern
	while read line # read one line from the $FILE in the loop
	do
		echo "$line" | grep $1 | awk -F":" ' { print $5 } ' #  read one, grep and awk -F":" - change delimiter to colon, $5 - show 5th column
	done
} <$FILE # feed the file


get_real_name $pattern
