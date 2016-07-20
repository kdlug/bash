#/bin/bash

declare -a colors

echo "Your favourite colors"

read -a colors # -a allowasigment of elements in an array

count=${#colors[@]} #  array size

i=0
while [ "$i" -lt "$count" ] #iterate by all elements of the array
do
	echo ${colors[$i]}
	(( i++ ))
done

echo ${colors[*]}

unset colors[2]

echo ${colors[*]}

unset colors

echo "no colors"

echo ${colors[*]}



