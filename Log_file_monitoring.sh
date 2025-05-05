#!/bin/bash

#A script to monitor a log file (/var/log/syslog or any file) and alert if the word "error" appears more than 5 times in the last 100  #lines.

WORD="error"
TARGET="/var/log/syslog"
count=$(tail -n 100 "$TARGET" | grep -i -o "\b$WORD\b"| wc -l)
if [ "$count" -gt 5 ]; then
	echo "Alert: \"$WORD\" word appeared $count times"
else
	echo "No worries \"$WORD\" word appeared $count which is less than 5 times"
fi







