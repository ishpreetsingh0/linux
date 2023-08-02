#!/bin/bash
NAME="ishpreet"
PASSWORD="ish123"
read -p "Enter Name " myname
if [ "$myname" = "$NAME" ]; then
	read -s -p "Enter Password " mypassword
	if [ "$PASSWORD" = "$mypassword" ]; then
		echo -e "\n Welcome"
	else
		echo -e "\n Wrong password"
	fi
else
	echo -e "\n Wrong Name"
fi
