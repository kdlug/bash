#!/bin/bash

# GETOPTS
#  to parse command line arguments in a professional way

# we passed 2 options :dm
# -d -m or -dm
while getopts :dm option
do
	case $option in
		d) d_option=1
		;;
		m) m_option=1
		;;
		*) echo "Usage: -dm"
	esac
done

day=`date | awk '{print $1 " " $2}'`

if [[ ! -z $d_option ]]
then
	echo "Date is: $day"
fi

month=`date | awk '{print $3}'`


if [[ ! -z $m_option ]]
then
        echo "Month is: $month"
fi

# OPTIND - index to the next argument that needs to be processed, because getopts is not change the position parameters
# we have to OPTIND to get the next positional parameter
# that means that we can actually type in 08.sh -dm, so this will work
shift $(($OPTIND -1))
echo $OPTIND
