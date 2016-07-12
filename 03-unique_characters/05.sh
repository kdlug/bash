#!/bin/bash

colors="red black white"



echo "FOR LOOP 3 iterations"
for color in $colors
do
        echo $color
done

echo "FOR LOOP 1 iteration"
for color in "$colors" # "" prevent word splitting
do
	echo $color
done
