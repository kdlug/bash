#!/bin/bash

# $REPLY
LIMIT_TIME=12
TIME_INTERVAL=3

echo "Tcis script will run for $LIMIT_TIME seconds."

echo "Press Ctrl+c to exit before that time limit."


while [ "$SECONDS" -le  "$LIMIT_TIME" ] # less then or equal to
do
	echo "This script has been running for $SECONDS"
	sleep $TIME_INTERVAL
done
