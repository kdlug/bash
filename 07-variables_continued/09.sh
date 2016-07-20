#!/bin/bash

# RANDOM
# Range: 0 32767
MAX=10
i=1 # index

while [ "$i" -le $MAX ]
do
	n=$RANDOM
	echo $n
	let "i +=1"
done
