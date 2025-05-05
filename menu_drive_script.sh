#!/bin/bash

#Create a shell script that shows a menu with options:
#Display disk usage
#Show running processes
#Show network interfaces
#Exit
#(Execute corresponding commands based on user selection.)

disk_usage(){
	df -h	
}

running_proc(){
	ps -aux
}

Network_interfaces(){
	ip addr show
}

read -p "please select the option \n 1: Display Disk usage! \n 2: Show Running Processes! \n 3:Show Network Interfaces!" option

case $option in
	1) echo "Displaying Disk Usage.." 
		disk_usage
		;;
	2) echo "Showing Running processes.."
		running_proc
		;;
	3) echo "Showing Network Interfaces.."
		Network_interfaces
		;;
	*)
		echo "Invalid Selection"
		;;
esac
