#!/bin/bash
array_display()
{
	array=($@)
	echo "Array elements are: ${array[@]} "
	echo "Element at 2nd position or first index is: ${array[1]}"
}
array_display "1:Hello" "2:world" "3:this world"
os=(macos windowsos linuxos)
array_display ${os[@]}

