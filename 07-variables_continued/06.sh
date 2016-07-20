#!/bin/bash

# $REPLY
echo "Some question"
read

# $REPLAY is a default variable if we didn't assign read to any variable
echo "The answer is $REPLY"

echo "Other question"
read var

echo  "Your answer is $var"
