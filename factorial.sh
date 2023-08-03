#!/bin/bash
factorial() 
{
	temp=$1
	if [ $temp -eq 1 ]; then
		echo "1"
	else 
		f=$((temp-1))
		f=$(factorial $f)
		f=$((f*temp))
		echo $f
	fi 
}

read -p "Enter a number : " n
if [ $n -eq 0 ]; then
	echo "Factorial is 1 "
else 
	factorial $n
fi
