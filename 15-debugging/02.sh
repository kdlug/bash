#!/bin/bash

#TRAP
trap 'echo "Listing variables: m=$m n=$n o=$o"' EXIT # tris trap will be executed only on exit

m=1
n=2
o=3

let "sum = $m+$n+$o"

echo "The sum is $sum"
# the exit will be executed after the last statement of the script




