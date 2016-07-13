#!/bin/bash

# SET
# to set posiotional parameters of the contents of the variable

var="1 2 3"
echo $var
# set -- # will unset the positional parameter
set -- $var #  wil set  positional parameters of the contents of the var

i=1

while [ "$i" -le $# ]
do
	echo -n "\$$i = "
	eval echo \$$i # set shell variable
	(( i++ ))
done

set -- # delete a shell variable
echo "\$1 = $1"
echo "\$2 = $2"
echo "\$3 = $3"


