#!/bin/bash
echo "example for ls -1 -r test*"
for dir in test*; 
do
	echo "files in $dir directory:"
	echo " "
	for file in $(ls -1 $dir); 
	do
		echo $file
	done
echo "------"
done 
