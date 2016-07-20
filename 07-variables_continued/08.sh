#!/bin/bash

# Protection of variables
# read only -r
# -e

declare -r var_r=5 # read only variable
echo "\$var_r = $var_r"

# -i - integer, we can use let commmand
declare -i var_i=10
echo "\$var_i = $var_i"

var_i=blue
echo "\$var_i = $var_i" # will outoput 0, because we assigned string


