#!/bin/bash

for i in 1 2 3 4 5
do
	echo "Outer loop $i ---------------------"
	
	for j in 1 2 3
	do 	
		echo "Inner Loop $j !!!! Outer loop iteration $i"
	done 
done
