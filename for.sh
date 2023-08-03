#!/bin/bash
sum=0
read -p "enter a number:" number
for ((i=1;i<=number;i++))
do
	echo $((sum=sum+i))
done
echo "The sum of first n number is $sum "
