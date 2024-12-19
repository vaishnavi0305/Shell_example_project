#!/bin/bash

read -p "Enter the user name: " username

if id "$username" &>/dev/null; then
	echo "user exists"
	echo "Home_directory:$(eval echo ~$username)"
        echo "bash_shell: $(getent passwd $username | cut -d: -f7)"
else
	echo "User does not exists"
fi
