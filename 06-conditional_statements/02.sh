#!/bin/bash

var=/home/kinguin/kinguin-docker/docker-compose.yml

if [[ -e $var ]]
then
	echo "File exists"
else
	echo "File does not exist"
fi
