#!/bin/bash

num=1

if [ "$num" -gt 0 ]
then
	if [ "$num" -lt 5 ]
	then
		if [ "$num" -gt 3 ]
		then
			echo "GT 0, LT 5, GT 3"	
		fi
	fi
elif [ "$num" -eq 0 ]
then
	echo "EQ 0"
else
	echo "I have no idea"
fi
