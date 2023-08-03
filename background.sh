#!/bin/bash
bg_func() 
{
	echo -e "Inside background function \n"
	find . -name "*.sh" > myshellscripts.txt
}
bg_func &
