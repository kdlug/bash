#!/bin/bash

# declare function

declare -f someFunction

someFunction()
{
	echo "How are you?"
}

someFunction
