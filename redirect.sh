#!/bin/bash
ls /user /test /bash /Volumes &> out_file.txt
ls /user /Volumes >/dev/null 2>&1
date >> out_file.txt
