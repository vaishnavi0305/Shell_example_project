#!/bin/bash

# Used different methods to calculate ex. let, (()), [], expr, bc
# let -> it does not need '$' to specify variable names.
# (()),[],expr ' $ 'can be used to specify var names inside the braces as well.
#
#
read -p "enter the operation you want to perform: ex: +, -, *, /, sqrt, sq, binary_conversion(bi), Octal_conversion(oc) " op

case $op in
	+)
		read -p "enter the value1: " value1
		read -p "enter the value2: " value2
		let result=value1+value2
		echo "addition is $result"
		;;
	-)
		read -p "enter the value1: " value1
                read -p "enter the value2: " value2
                result=$[ value1 - value2 ]
                echo "Substraction is $result"
                ;;
	\*)
		read -p "enter the value1: " value1
                read -p "enter the value2: " value2
		result=$((value1*value2))
                echo "multiplication is $result"
                ;;
	/)
		read -p "enter the value1: " value1
                read -p "enter the value2: " value2
		if [ $value2 -ne 0 ]; then
			result=`expr $value1 / $value2`
			echo "division is $result"
		else
			echo "division not valid"
		fi
		;;
	sqrt)
		read -p "enter the value: " value
		echo "scale=2; sqrt($value)" | bc -l
		;;
	sq)
		read -p "enter the value: " value
		result=$(echo "$value^2" | bc)
		echo "square is $result"
		;;
	bi)
		read -p "Enter the value: " bino
		echo "obase=2;$bino" | bc
		;;
	oc)
		read -p "enter the value: " ocno
		echo "obase=10;ibase=2;$ocno" | bc
		;;
esac


		

