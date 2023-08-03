#!/bin/bash
exec 3> output.txt
echo "Hello World" >&3
date >&3
#close fd # 3
exec #<$-
