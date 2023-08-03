#!/bin/bash
exec 3< output.txt
cat <&3
# close fd # 3
exec 3<&-
