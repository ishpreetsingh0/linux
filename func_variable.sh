#!/bin/bash
say_hello () 
{
	local first_name=$1
	last_name=$2
	echo "Hello From function $first_name $middle_name $last_name "
}
middle_name="Singh"
say_hello "Ishpreet" "Kapoor"
echo "My First Name is Mr : " $first_name
echo "My Middle Name is Mr : " $middle_name
echo "My Last Name is Mr : " $last_name 
