#!/bin/bash

read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "enter the operation (+, -, /, \* ) : " op

case $op in
	+) result=$((num1 + num2));;
	-) result=$((num1 - num2));;
	\*) result=$((num1 * num2));;
	/) 
		if [ "$num2" -ne 0 ]; then
			result=$((num1 / num2))
		else
			echo "division cannot be performed"
			exit 1
		fi
		;;

	*) 
		echo "invalid operation"
		exit 1
		;;

esac

echo "result: $result"

