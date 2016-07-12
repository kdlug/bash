#!/bin/bash


NO_OF_ARGS=2
E_NOARGS=65
E_BADARGS=85
E_UNREADABLE=86
E_NOFILE=87
E_SIZE=89

if [[ -z "$1" && -z "$2" ]]
then
	echo "No arguments given"
	exit $E_NOARGS
fi

if [ $# -ne "$NO_OF_ARGS" ]
then
	echo "USAGE: `basename $0` file1 file2"
	exit $E_BADARGS
fi


if [[ ! -e "$1" || ! -e "$2" ]]
then
        echo "File does not exists"
        exit $E_NOFILE
elif [[ ! -f "$1" || ! -f "$2" ]]
then
        echo "File isn't a regular file"
        exit $E_NOFILE
elif [[ ! -f "$1" || ! -f "$2" ]]
then
        echo "Filedoesnt's have read permission"
        exit $E_UNREADABLE
fi

cat $1 $2 | sort > file.txt

if [ $? -eq 0 ] #check exit status of the last command
then
	echo "Execution of script was successful"
	cat file.txt
else
	echo  "Execution of script failed"
fi




