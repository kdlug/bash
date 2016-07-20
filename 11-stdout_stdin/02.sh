#!/bin/bash
# STDIN - keyboard input
# STDOUT - screeen
# STDRRR - error message output on the screen

file=wood.txt

echo 12345 > $file 
exec 3<>$file #open a file and assign file descripto 3 to it
read -n 2 <&3 ## will read only 2 characters from a particular file

echo -n . >&3 # write a decimal point there
exec 3>&-   # we close a file

cat $file
