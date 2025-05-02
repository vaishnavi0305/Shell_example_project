#!/bin/bash

TAR_DIR="/tmp"
DAYS="+7"
LOGFILE="/var/log/cleanup_interactive.log"

echo "Starting the cleanup.... at $(date)" | tee -a "$LOGFILE"
echo "scanning $TAR_DIR.." | tee -a "$LOGFILE"

# looking for files older than 7 days and saving it in temporary variable

FILELIST=$(find "$TAR_DIR" -type f -mtime "$DAYS")
echo "$FILELIST" | tee -a $LOGFILE

# check if there are any files older than 7 days

if [ -z "$FILELIST" ]; then
	echo "No files found which are older than $DAYS days" | tee -a "$LOGFILE"
	exit 0
fi

# Show the list to the user

echo "$FILELIST" 
echo "this above files will be deleted"

# get the confirmation from user

read -p "Please confirm if you want to delete the files(y/N):" confirm
if [[ "$confirm" == "y" || "$confirm" == "Y" ]]; then
	echo "$FILELIST" | while IFS= read -r file; do
		 rm -f "$file" && echo "deleted: $file" | tee -a "$LOGFILE"
	done
	echo "cleanup completed" | tee -a "$LOGFILE"
else
	echo "cleanup cancelled" | tee -a "$LOGFILE"
fi

echo "=== Interactive Cleanup Finished at $(date) ===" | tee -a "$LOGFILE"
echo "" >> "$LOGFILE"














