ii#!/bin/bash
echo "while example"
read -p "Enter a number: " number
sum=0
i=0
while [ $i -le $number ]
do
	echo $((sum=sum+i))
	i=$[$i+2]
done
echo "Sum of even number within in range $number is $sum"
