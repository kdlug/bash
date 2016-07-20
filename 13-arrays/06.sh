#/bin/bash

# bubble sort algoritm

swap()
{
	local temp=${colors[$1]}
	colors[$1]=${colors[$2]}
	colors[$2]=$temp

	return
}

declare -a colors

colors=(red black blue white brown)

size=${#colors[@]}

for (( last = $size -1 ; last > 0 ; last-- )) #index will be named last, each loop will decrease our index by one
do
	for (( i = 0 ; i < last ; i++ ))
	do
		# [[ if condition ]] && run a function 
		[[ "${colors[$i]}" > "${colors[$((i+1))]}" ]] && swap $i $((i+1)) # we're comparing 2 values and swap them if needed
	done
done

echo ${colors[@]}


