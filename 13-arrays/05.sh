#/bin/bash

FILE=wood.txt

declare -a arr_file

arr_file=( `cat "$FILE"` ) #loads content od the file to the array
echo ${arr_file[*]}

size=${#arr_file[*]}

echo "array size is $size"
