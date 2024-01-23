#!/bin/bash
echo "zeroth arg: $0"
echo "first arg: $1"
echo "second arg: $2"
echo "third arg: $3"
echo "9th arg : $9"
echo "10th arg:  ${10}"
echo "total arg is : $#"

echo "first dollar asteric "
echo "Args (dollar asteric): $*"

echo "second dollar asteric"
for arg in "$*"
do
echo "$arg"
done

echo "first dollar @ "
echo "Args $@"

echo "second dollar @"
for arg in "$@"
do
echo "$arg"
done

# #!/bin/sh
# echo "Script Name: $0"
# echo "First Parameter of the script is $1"
# echo "The second Parameter is $2"
# echo "The complete list of arguments is $@"
# echo "Total Number of Parameters: $#"
# echo "The process ID is $$"
# echo "Exit code for the script: $?"
# */
