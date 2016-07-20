#!/bin/bash

# GREP
E_NOPATTERN=71
DICT='/usr/share/dict/words'

if [ -z "$1" ] # checks if any parameter is passed
then

	echo
	echo "Usage:"
	echo "`basename $0` \"pattern,\""
	echo "where \"pattern\" is in the form"
	echo "ooo..oo.o.o..."
	echo "The o's are letters you already know,"
	echo "And the periods are missing letters."
	echo "F.ex. w...i....n"
	echo
	exit $_NOPATTERN
fi

grep ^"$1"$ "$DICT" # ^ anchor, beginning of the line,, $ - end of the line
