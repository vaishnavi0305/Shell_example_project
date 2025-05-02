#!/bin/bash


echo "top 5 memory consuming processes are:"
ps -aux --sort=-%mem | awk 'NR==1 || NR<=6 {print $1, $2, $4, $11}'
