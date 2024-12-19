#!/bin/bash

uptime=$(uptime -p)
avgload=$(uptime | awk -F'load average:' '{print $2}')

echo "system uptime: $uptime"
echo "Average Load: $avgload"
