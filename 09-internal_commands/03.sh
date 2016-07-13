#!/bin/bash

# READ

# echo way
echo "Enter a string"
read var
echo "$var"
# input: test\\
# output: test\

# if you add read -r -> a backslash will be taken into a consideration
echo "Enter a string"
read -r var
echo "$var"
# input: test\\
# output: test\\


