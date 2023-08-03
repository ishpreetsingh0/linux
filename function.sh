#!/bin/bash
function machine #Function
{
	echo -e "\nMachine information: " ; uname -a
	echo -e "\nUsers Logged on: " ; W -h
	echo -e "\nMachine Status" ; uptime
	echo -e "\nMemory Status" ; free
	echo -e "\nFile System Status" ; df -h

}

echo "Function starts"
machine
echo "End of Function"
