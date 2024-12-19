#!/bin/bash

read -p "enter the file name or directory path: " path

if [ -e $path ]; then
	if [ -f $path ]; then
		echo "It is a regular file"
	elif [ -d $path ]; then
		echo "It is a directory"
	elif [ -L $path ]; then
		echo "It is a symbolic link"
	else
		echo "It exists but is not a regular file , directory, or symbolic link"
	fi
else
	echo "file does not exists."
fi
