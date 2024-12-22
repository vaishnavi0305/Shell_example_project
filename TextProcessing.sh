#!/bin/bash

read -p "Enter the number of lines: " N
if [ $N -ge 1 ] && [ $N -le 100 ]; then
	> file.txt
    for (( i=1; i<=N; i++ ));
    do
        read -p "Enter $i st line: " line
        echo "$line" >> file.txt
    done
    result=$( cut -c3 file.txt )
    echo "$result"

fi
