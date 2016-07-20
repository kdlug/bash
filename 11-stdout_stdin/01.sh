#!/bin/bash
# STDIN - keyboard input
# STDOUT - screeen
# STDRRR - error message output on the screen

file=wood.txt

echo "this line is sent to $file" 1>$file # 1>$file, we're redirecting the standard output to file
