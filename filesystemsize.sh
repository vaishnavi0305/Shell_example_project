#!/bin/bash
#
#Project:- It will the 5 biggest file in the path which you will pass via a positional argument
#Date:- 26-12-2024
#
path=$1
echo "will find the 5 biggest file in the path : $path"
du -ah $path | sort -hr | head -5 > /tmp/filetext.txt
cat /tmp/filetext.txt

