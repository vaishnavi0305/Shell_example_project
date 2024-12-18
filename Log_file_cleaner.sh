#!/bin/bash

echo "Enter the log file path which you want to clean:"
read log_file

# Step 2: Check if the file exists
if [ ! -f "$log_file" ]; then
    echo "The file does not exist. Please provide a valid file path."
    exit 1
fi

# Step 3: Calculate the date 7 days ago
seven_day_ago=$(date -d "-7 days" +"%Y-%m-%d")

timestamp=$(date +"%Y-%m-%d")
cleaned_file="cleaned_log_$timestamp.log"

awk -v cutoff="$seven_day_ago" '
	$1 >= cutoff && $0 !~ /ERROR/
' "$log_file" > "$cleaned_file"

echo "cleaned log file has been saved to: $cleaned_file"
