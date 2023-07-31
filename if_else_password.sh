#!/bin/bash
Password="Ishpreet"
read -s -p "Enter Password : " mypassword
if [ $Password == $mypassword ]; then
	echo -e "\nPassword accepted "
else
	echo -e "\nPassword Rejected"
fi
