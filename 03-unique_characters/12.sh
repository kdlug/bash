#! /bin/bash

var=5
(var=10;) # cannot be read by the script

echo $var
