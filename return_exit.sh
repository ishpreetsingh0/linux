#!/bin/bash
function return_func () 
{
	if [ $1 == $2 ]; then
	echo "this is return function"
	return 0
	echo "this will not appear"
	fi
}
function exit_func ()
{
        if [ $1 == $2 ]; then
        echo "this is exit function"
        exit 0
        fi
}
return_func 3 3
echo "We are in Main  program after executing return function"
exit_func 3 3
echo "We are in Main program after executing exit function"
