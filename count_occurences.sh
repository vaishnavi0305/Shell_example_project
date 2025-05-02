#!/bin/bash

read -p "enter the file name to count the word odccurences:" FILE
if [ ! -f $FILE ]; then
	echo "usage: $0 <filename>"
	exit 1
fi

cat $FILE | tr '[:space:]' '[\n*]' | tr -d '[:punct:]' | grep -v '^$' | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -nr 
