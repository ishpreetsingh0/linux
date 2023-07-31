#!/bin/bash

declare -a Linux=('Debian' 'Redhat' 'Ubuntu' 'Fedora')

echo -e "Orignal elements in array Linux is : ${Linux[@]} \n"
echo -e "The two elements starting from index one(Redhat) is: ${Linux[@]:1:2} \n"

echo -e "The elements starting from index one(Redhat) is: ${Linux[@]:1:3} \n"

echo "change by replacement is: Ubuntu to Ishpreet "
Linux[2]='Ishpreet'
echo -e "Updated elements in array Linux is : ${Linux[@]} \n"
echo -e "The elements starting from index one(Redhat) is: ${Linux[@]:1:3} \n"
