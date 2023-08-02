#!/bin/bash
read -p "Enter a word: " string
if [ -z "$string" ]; then
	echo "Nothing was entered"
elif [[ "$string" = *'raj'* ]] && [[ "$string" = *'jit'* ]]; then
	echo "$string contains both 'raj' and 'jit' "
elif [[ "$string" = *'raj'* ]] || [[ "$string" = *'jit'* ]]; then
        echo "$string contains both 'raj' or 'jit' "
else
	echo " $string doesnot contain either 'raj' or 'jit' "
fi
