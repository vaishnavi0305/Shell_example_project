#!/bin/bash
#
#Project:- It will the 5 biggest file in the path which you will pass via a positional argument
#Date:- 26-12-2024
#Positional arguments:- 
# $1:- will display first argument passed while running the script
# $0:- Will display the name of the script
# $# :- will display the total arguments passed.
# $@:- list all arguments
# $$ :- process id of script
# $? :- exit code of the script
path=$1
echo "will find the 5 biggest file in the path : $path"
du -ah $path | sort -hr | head -5 > /tmp/filetext.txt
cat /tmp/filetext.txt

