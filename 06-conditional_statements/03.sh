#!/bin/bash

var=/home/kinguin/kinguin-docker/docker-compose.yml

#((..)) 
# result in this paranthesis, if the result is 0, the exist status is 1 (FALSE), if the result is non zero value, the exit status will be 0 (TRUE)
(( 2 > 1 ))

echo "Exit status is $?"
