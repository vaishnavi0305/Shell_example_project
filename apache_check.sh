#!/bin/bash

SERVICE="apache2"

if systemctl is-active --quiet $SERVICE; then
	echo "$SERVICE is running"
else
	echo "$SERVICE is not running, restarting now"
	sudo systemctl start $SERVICE
 	sudo echo "$SERVICE is now started at $(date)" >> /var/log/service-restart.log
fi


