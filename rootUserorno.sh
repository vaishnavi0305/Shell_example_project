#!/bin/bash

#checks if the current script is ran by root user or regular user
# UID for root user is 0


if [ $UID -ne 0 ]; then
	echo "Script is ran by regular user"
else
	echo "you are a root user"
fi

