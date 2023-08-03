#!/bin/bash
echo "from here"
wc -w << HERE
	Welcome
	to 
	the
	BASH 
	learning
HERE
echo "from here string"
wc -w <<< 'Welcome to the BASH learning'
