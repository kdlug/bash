#!/bin/bash

MIN=10

if [ -n "$1" ] # -n check if parameter has been specified
then
	echo "First one is $1"
fi

if [ -n "$2" ]
then
        echo "Second one is $2"
fi

echo "List of arguments "$*""
echo "The name of the script \""$0"\""

if [ $# -lt "$MIN" ]
then
	echo "Not enough arguments, need 10 to run"
fi
