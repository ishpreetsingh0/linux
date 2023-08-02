#!/bin/bash
if [ ! -f "$1" ]; then
	echo "File '$1' does not exist"
else
	echo "File '$1'  exist"
fi
