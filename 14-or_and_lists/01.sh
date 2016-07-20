#!/bin/bash

E_BADARGS=65

if [ ! -z "$1" ] && echo "FIrst is $1" && [ ! -z "$2" ] && echo "second parameter is $2"
then
	echo "Two parameters are passed"
else
	echo "Usage: `basename $0` arg1 arg2 and exit $E_BADARGS"
fi
