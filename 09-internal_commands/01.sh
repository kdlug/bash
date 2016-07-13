#!/bin/bash

# printf
# I/O commands: echo read, prinftf
# printf - a universal way to outputting something on the screen

# create a rather unique value, read only
declare -r PI=3.1415926

# Format $1.2f -> will show 2 digits after .
printf "Second decimal of PI is %1.2f\n" $PI

