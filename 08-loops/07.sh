#!/bin/bash

# SWITCH CASE

echo -n "Enter a letter or a digit"
read a


# case expression in
#    pattern1 )
#        statements ;;
#    pattern2 )
#        statements ;;
#    ...
# esac

case "$a" in
	[[:lower:]] ) echo "$a is lowercase letter";; # tests if a variable is lowercase
	[[:upper:]] ) echo "$a is an uppercase letter";; # test if variable is uppercase
	[0-9]	      ) echo "$a is a digit";;
	*	      )	echo "$a is a special character";;
esac # end of case

exit 0
