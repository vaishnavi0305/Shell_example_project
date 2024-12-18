#!/bin/bash

usage=$(df -h /home | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $usage -gt 80 ]; then
	echo "disk usage has exceeded 80% "
else
	echo "Disk usage is within limits"
fi

