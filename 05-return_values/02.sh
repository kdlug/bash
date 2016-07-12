#!/bin/bash

NO_OF_ARGS=2
E_BADARGS=85
E_UNREADABLE=86


if [ $# -ne "$NO_OF_ARGS" ] # if the number of command line arguments is not equal
then
	echo "Usage: `basename $0`" testFile1 testFile2 # $0 - the name of the script

exit $E_BADARGS
fi

if [[ ! -r "$1" || ! -r "$2" ]]  # -r return true if file exists and is readable
then
	echo "File are not real"
exit $E_UNREADABLE
fi


cmp $1 $2 &> /dev/null ## compare values of 2 files, will return 0 if they are the same and 1 when they are different

if [ $? -eq 0 ]  # if exit status of the last command (cmp) is 0
then
	echo "Files are the same"
else
	echo "File are not the same"
fi

exit 0
 
