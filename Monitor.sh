#!/bin/bash

LOGFILE= "/var/log/monitoring.log"

log() {
	sudo echo "$(date): $1" | tee -a "LOGFILE"
}

check_disk() {
	disk_used=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')
	if [ $disk_used -gt 80 ]; then 
		log "disk usage is higher than 80% which is $disk_used \%"
	else
		log "less than 80%"
	fi
}

check_Mem() {
	mem_used=$(free | awk '/Mem:/ {printf("%.2f"), $3/$2 * 100}')
	if (( $(echo "$mem_used > 75.0" | bc -l) )); then
		log "memory usage if high: ${mem_used}%"
	else
		log "memory usage is normal: ${mem_used}%"
	fi
}

check_cpu() {
	cpu_used=$(top -bn1 | grep "load average:"| awk '{print $(NF-2)}'| sed 's/,//')
	if (( $(echo "$cpu_used > 1.5" | bc -l ) )); then
		log "cpu usage is high: $cpu_used"
	else
		log "cpu usage is normal: $cpu_sed"
	fi
}

log "====== System Health Check======"
check_disk
check_Mem
check_cpu
log "================================"


