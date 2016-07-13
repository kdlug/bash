#!/bin/bash

# SELECT

PS3='Pick a color: ' # prompt string treee, one of the shell prompt available in  Linux (PS1, PS2, PS3, PS4)
# PS3 is useful in shell scripts

# will list all options on the screen and show selected option f.ex. 
# 1) brown
# 2) grey ...
select color in "brown" "grey" "black" "orange" "red"
do
	echo "You selected this color: $color" # we have to pick a number
	break
done
