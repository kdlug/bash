#!/bin/bash

E_BADARGS=65

[ ! -z "$1" ] || [ ! -f "$1" ] || (rm -f "$1"; echo "removed")
