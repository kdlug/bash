#!/bin/bash

# READ from a file line by line
echo "Read"

while read var
do
	echo "$var"
done < wood.txt
