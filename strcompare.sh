#!/bin/bash
if [ "$(whoami)" != 'ishpreetsingh' ]; then
	echo "you dont have permission to run $0 as non-root user."
else
	echo "Welcome to root!."
	exit 0
fi
