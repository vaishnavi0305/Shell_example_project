#!/bin/bash

#User Management Script
#Write a script that reads a list of usernames from a file and:

#Creates the user (if not exists)

#Adds them to a group called developers

TARGET="userList.txt"
GROUP_NAME="developer"

while read name; do
	if id "$name" &>/dev/null; then
		sudo usermod -aG "$GROUP_NAME" "$name"
		echo ""$name" user already created and also added in the group "$GROUP_NAME""
	else
		sudo useradd "$name"
		sudo usermod -aG "$GROUP_NAME" "$name"
		echo "user "$name" was not there so created and added in the group "$GROUP_NAME""
	fi
done < $TARGET

echo "All the users added to the group "$GROUP_NAME""
