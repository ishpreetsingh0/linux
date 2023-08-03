# shell_scripting

# scripting

LEARNING FROM https://spoken-tutorial.org/watch/BASH/Introduction+to+BASH+Shell+Scripting/English/

---
#To make a file executable use .
chmod +x <file name>
---
  #to execute
  ./<file name>
---
System varibale are in capital eg $HOME
user define variables are in lower case eg $username
  username=ishpreet
  echo "$username"
  unset username (to unset the variable)
---
global variable : its value will remain same inside and outside the fucntion.
local varibales : its value remain same only inside the function.

#!/bin/bash
username=ishpreet
echo "outside the function: $username"
func()
{
local username=ishpreet_local
echo "inside the function: $username"
}
func
___  
Read

 read -p "enter your value" : value
 echo "$value"

-t <value> 
To add timer in seconds

-s 
To add values in silent mode

---

Arguments

$0 for zeroth argument
echo "zeroth arg: $0"

Zeroth arg is filename

./arg.sh <1st argument> <2nd argument>


After 9, every arg will be in {}, eg ${12}

* and @ to print all
@ prints in next lines

All example in arg.sh

___

Quoting
 Double "
 Single '   : preservers literal meaning of each char in string, to turn off special meanings of all char.
 Backslash \ : removes special meaning from char, used as an escape char

---
Gllobbing and export

Globbing
 File name/ pathname expansion carried by bash. It recognise and expands by wildcards. It also intercepts standard wildcard char like * and ?.
Ls *.sh : to list all .sh files

Export
Variables are local to their own shell, local variables can be used by same shell or current shell.
Export command exports a variable or a function to the env of all child processes. Can also change a local var to global.


---

Array
Declare an array and assign values to it.
Initialise an array during declaration.
To find length of an array and its nth element.

Array is a variable with multiple values.
Values can be of same or different type. 
There is no maximum limit for the size of an array.

Array members need not to be consecutive.
Array index starts from zero.

Declare -a arrayname
Name[index]='value'

Array can be declare and initialized at same time. 
Each elements should be separated by space.
Each element should be within parentheses.

Declare -a arrayname=('element1' 'element2')

Length of an array can be obtained by ${#arrayname[@]}

The Nth element can be found by ${arrayname[n-1]}

To Extract, add, remove, replace.
Extract Arrayname[@]:position:Number of elements
Replace Arrayname[n]='new word'
Add an element Arrayname=("${Arrayname[@]}" "new_element1" "new_element2")
Remove unset arrayname[index number]

---

Test built-in-command which returns exit status
It returns : 0(true) or 1(False)
To get return status use $? 
You can evaluate expression by : test or []

[ 4 -eq 6 ];  echo $?
test 5 -eq 4; echo $?
[ 4 -eq 4 ];  echo $?
test 4 -eq 4; echo $? 

Conditional execution if

If [ expression ];then
Commands
Fi

End if loop with fi

Semicolon is used to terminate the expression

---

Nested if and multi level if statement
In multi level
If and elif is used
-z is used to check is nothing is entered ie null value

---
Logical operators to control programme flow
And , or, not

And: [ $cond1 ] && [ $cond2 ] 
	[ $cond1 -a $cond2 ]
Or: [ $cond1 ] || [ $cond2 ] 
	[ $cond1 -o $cond2 ]
Not : [ ! Expression ]
	! expression

---
Arithmetic
Equal -eq
Not equal -ne
Less than -lt
Less equal to -le
Greater than -gt
Greater than equal to -ge
---
String and file attributes comparison
To compare
== equal
!= not equal

Every programme returns an exit status. A successful cmd returns 0, an erroneous cmd return a non-zero value. Which can be interpreted as an error code.

-f attribute finds file
-s checks char/string in file
-w to check write permission
-nt to check newer file (newer than) [ $file1 -nt $file2 ]
-ot to check older file (older than)
---
Conditional loops

For loop

For ((exp1; exp2; exp3))
Do 
	statement1
	statement2
	statement3
Done

For variable in seq/range
Do
	statement1
	statement2
	statement3
Done

While loop

While [ condition ]
Do
	statement1
	statement2
	statement3
Done

---
Nested for loop: a loop within loop

For ((exp1; exp2; exp3))
Do 
	For ((exp1; exp2; exp3))
		Do 
		statement1
		statement2
	Done
Done

Ls -1 -r test*
---

Case statement can be used as alternatively for elif (if-else). When there are many items to select from.

Case $VARIABLE in
	match1) commands
	;;
	match2) commands
	;;
	*) command_to_execute_by_default
	;;
esac

* is used for default condition

---

File descriptors
Output/input file descriptors. Close file descriptors
0,1 and 2 are standard file descriptors for stdin, stdout and stderr. They are used for I/O redirection. 
exec [File Descriptor] > filename

3 to 9 are additional file descriptors for newly open file. 

---

Functions
Importance of functions, declare a func, call a func, workflow of a func.
Collection of commands or an algorithm. Intended to do a specific task. Separates a complex programme into separate task. Improves overall script readability and ease of use.

function func_name 
{
	commands to be executed
}

Or

function_name()
{
	commands to be exec 
}

To pass an argument in a func, global and local variables in func.

---
Array and functions
Exit and return statement for an array 

function_name ${array_name[@]}

In bash exit and return statements gives status code of a function or a program
Return : will return to script from where it was called.
Exit : will end the entire script from where it is encountered.
---
Advance topics for functions
Source command to put func in background. It is used to load a file into shell script. It reads and  executes cmd from that file. It also imports code into script. Used when multiple scripts use a common data or function library.

Source <file_name>
Source <path_to_file>
Source <file_name> <arguments>

Background func we use & at the end.
Shell forks a child process which have a pid and job number.
---

Recursive functions
A function which calls itself. Helpful in complex algorithm.
---
Redirection: send output to a file or read input from a file. Each shell cmd has its own I/p o/p. Redirected using special notations. Changing the default path of I/O put is call redirections. Common return value are:
  0 for input ie keyboard
  1 for output ie screen
  2 for error ie screen
	0, 1, 2 are POSIX number (FD) also knowns as file descriptor. A redirector uses a posix to talk to user or program. 
Standard input : default input method . 0. Also stdin. < is input redirection symbol.syntax Command < filename.
Standard output: display output. 1. Stdout. > is used. Syntax cmd > filename.
Standard error. 2> is error redirection symbol. Syntax is Command 2> error.txt

Stdout and stderr can be redirected to same file. &> is syntax for same. Command &> filename. Other method is 2>&1. Command > /dev/null 2>&1.
/dev/null file is special file. Where we can dump anything. It includes output and error msg. Also called bit bucket. 
We can also append this to a file. Command >> file_name

---
Here document and strings: Special purpose redirections. Special purpose block of text or code. Form of I/O redirect . It feeds a command list to interactive program or command line. It can be treated as separate file or multiple lines to shell script. 
Command << HERE
	text1
	text2
	textN
HERE 

Here string is used for input redirection from text or a variable. Input is mentioned in same line within single quotes. Command <<< 'string'
Tr a-z A-Z is used to convert to upper string.
