#!/bin/bash

set -x

#############
#Author: vaishnavi
#Date:- 10th Aug

#addittion of 2 numbers script
#############

echo -n "Enter first number: "
read num1

echo -n "Enter 2nd number: "
read num2

sum=$((num1 + num2))
echo "addition of $num1 + $num2 is $sum"

