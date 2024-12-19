#!/bin/bash

read -p "Enter the directory for which you want to check the disk usage" dir

if [ -d "$dir" ]; then
	usage=$(df -h "$dir" | awk 'NR==2 {print $5}' | sed 's/%//')
	if [ $usage -gt 80 ]; then
		echo "the disk usage has exceeded: $usage"
	else
		echo "disk usage for $dir is within limit: $usage"
	fi
else
	echo "directory doesnot exists"
fi
