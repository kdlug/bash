#!/bin/bash

a=unset # just a string
prev=$a

# while [ condition ]
# do
# ...
# done

# A standard while loop
while [ "$a" != end ] # if someone type end, it will exit the loop
do
	echo "Input end to exit from the script"
	read a # read from stdin
	echo "variable = $a"
done
