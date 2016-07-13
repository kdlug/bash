#!/bin/bash

# EVAL
# combine all the arguments in an expression and then evaluate them

if [ ! -z $1 ] # check if parameter is pass to the scipti (not empty)
then
	process="ps -e | grep $1" # output will be piped
fi

eval $process # string $process will be execute and then referring the result to the variable
