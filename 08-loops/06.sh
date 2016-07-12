#!/bin/bash

for i in 1 2 3 4 5
do 
	echo "Loop 1: iteration $i"

	for j in 1 2 3
	do
		echo -e "\tLoop 2: iteration $2"
		
		for k in 1 2 3 4
		do
			echo -e "\t\tLoop 3: $iteration $k"
			if [ "$k" -eq 2 ]
			then
				break 2 # it will break 2 levels (3rd and 2nd loop)
			fi
		done
	done
done


for i in 1 2 3 4 5
do
        echo "Loop 1: iteration $i"

        for j in 1 2 3
        do
                echo -e "\tLoop 2: iteration $2"

                for k in 1 2 3 4
                do
                        echo -e "\t\tLoop 3: $iteration $k"
                        if [ "$k" -eq 2 ]
                        then
	                    continue 3 # it will continue 3 levels, skip the rest of loop 3
                        fi
                done
        done
done

