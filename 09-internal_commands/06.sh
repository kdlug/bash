#!/bin/bash

# SET command 
# used to change the values of shell options and variables, option that is being set can be processed by  a minus (-)(disables option) or a plus (+)(enables option) sign
# if no options or arg are specified set comman displays the names and values of all shell variables and functions in a sort of manner
# Set commmand is also used to set the position parameters as well

set +o history # enables history option
set -o history # disables history option

echo "Before setting the parameters"

# parameters passed to the script
echo "\$1 = $1"
echo "\$2 = $2"

set `echo "three four"`

echo "After setting parameters"
echo "\$1 = $1"
echo "\$2 = $2"


