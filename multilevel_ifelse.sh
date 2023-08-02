#!/bin/bash
read -p "Enter a word: " mystring
if [ -z "$mystring" ]; then
	echo " Nothing was entered"
elif [[ "$mystring" == *"raj"* ]]; then
	echo "\"$mystring\" contains word 'raj' "
elif [[ "$mystring" == *"jit"* ]]; then
        echo "\"$mystring\" contains word 'jit' "
else
	echo "Sorry input does not contain 'raj' or 'jit'"
fi
