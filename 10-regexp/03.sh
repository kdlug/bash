#!/bin/bash

# SED
E_BADARGS=65
DICT='/usr/share/dict/words'

if [ $# -eq 0 ]
then

	echo
	echo "Usage:"
	echo "`basename $0` file"
	exit $_BADARGS
else
	for i
		do
			sed -e '1,/^$/d' -e '/^$/d' $i 
			#deletes from the beggining of input the first black line , /^$/d - remove all black lines
		done
fi

