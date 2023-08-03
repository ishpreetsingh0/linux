#!/bin/bash
file1="/Volumes/Ishpreet/project/bash/read.txt"
if [ -f $file1 ]; then
	echo "File exists"
else
	echo "File does not exists"
fi
