#!/bin/bash

declare -a Linux=('Debian' 'Redhat' 'Ubuntu')

echo -e "Total number of elements in an array linux is: ${#Linux[@]} \n"
echo -e "The elements of array Linux are : ${Linux[@]} \n"
echo -e "The Third Element of array Linux is : ${Linux[2]} \n"
echo -e "The length of third element is : ${#Linux[2]} \n"
