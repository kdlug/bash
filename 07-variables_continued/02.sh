#!/bin/bash

# declare

x=8/2
echo "\$x = $x"

# we have to use let and or we have declare a variable as int 
declare -i x
x=8/2
echo "\$x = $x"

# array
declare -a x=(1 2 3 4 5)

for i  in {0..4} # iterate next 5 elements of the array 
do
	echo "$x[$i]"
	let "i +=1" # i = i+1
done
