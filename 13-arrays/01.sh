#/bin/bash

# ARRAYS
arr[0]=20
arr[1]=30

declare -a var
var=( 0 1 2 3 4 5 6 7 8 9 ) # define elements of an array

car=( [0]="first" [1]="second" [7]=45 ) # array

echo -e "${arr[0]} \n${arr[1]}"

echo -e "${var[3]} \n${var[5]}"

echo -e "${car[0]} \n${car[7]}"

