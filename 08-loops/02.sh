#!/bin/bash

a=unset # just a string
prev=$a

# while [ condition ]
# do
# ...
# done

while echo "Previous variable = $prev"
      echo # an empty line
      prev=$a	
    [ "$a" != end ] # if someone type end, it will exit the loop
do
	echo "Input end to exit from the script"
	read a # read from stdin
	echo "variable = $a"
done
