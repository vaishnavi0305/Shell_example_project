#!/bin/bash

#Prompt the user to enter the directory path
echo "Enter Directory to backup:"
read directory_path

#Now validate if the entered path is Valid or not

if [ -d "$directory_path" ]; then
	echo "The entered path is valid: $directory_path"
	# generate a timestamp in yyyy-mm-dd format
	timestamp=$(date +"%Y-%m-%d")
	backup_directory="backup_$timestamp"
	mkdir -p "$backup_directory"

	cp -r  "$directory_path/" "$backup_directory/"
	echo "Backup completed successfully and are saved in: $backup_directory"
else
	echo "Invalid Directory path: $directory_path"
fi
