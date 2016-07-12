#!/bin/bash

#function_name()
#{
#
#}

# in single line we need to use ;
#function_name2() { echo 'Test'; echo 'Test2'; }

# call the funciton
# function must defined
#function_name par1 par2 par3


function1 ()
{
	echo "Call  \"f2\" from \"f1\"."
	echo $FUNCNAME
	echo "FIrst arg $1, 2nd arg $2"

	function2
}

function2 ()
{
	echo "this is f2"
	return $FUNCNAME
}

# passing arg to the function
function1 10 20


