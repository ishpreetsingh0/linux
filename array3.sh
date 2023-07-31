#!/bin/bash

declare -a Linux=('Debian' 'Redhat' 'Ubuntu' 'Fedora')
echo -e "The elements of array Linux are : ${Linux[@]} \n"
Linux=("${Linux[@]}" "MrUnix" "MrLinux")
echo -e "The New Array with two added elements is : ${Linux[@]} \n"
echo "Removing one element at index 3 or position 4"
unset Linux[3]
echo -e "The new array after removing Fedora is : ${Linux[@]} \n"
