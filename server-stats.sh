#!/bin/bash

IDLE_PERCENTAGE=$(top -b -n 1 | grep %Cpu | awk '{print $8}')
TOTAL_USAGE=$( echo 100 - $IDLE_PERCENTAGE | bc )

echo "Total CPU usage: $TOTAL_USAGE"

TOTAL_MEMORY=$(free | grep 'Mem' | awk '{print $2}')
USED_MEMORY=$(free | grep 'Mem' | awk '{print $3}')
FREE_MEMORY=$(free | grep 'Mem' | awk '{print $4}')
USEDMEM_PERCENTAGE=$( echo $"scale=2; ( $USED_MEMORY / $TOTAL_MEMORY ) * 100" | bc)
FREEMEM_PERCENTAGE=$( echo $"scale=2; ( $FREE_MEMORY / $TOTAL_MEMORY ) * 100" | bc)

echo "Total memory: $TOTAL_MEMORY"
echo "Used memory: $USED_MEMORY"
echo "Used percentage: $USEDMEM_PERCENTAGE %"
echo "Free memory: $FREE_MEMORY"

DISK=$(df -h | grep '/dev/sdd')
TOTAL_DISK=$(df -h | grep '/dev/sdd' | awk '{print $2}')
USED_DISK=$(df -h | grep '/dev/sdd' | awk '{print $3}')
FREE_DISK=$(df -h | grep '/dev/sdd' | awk '{print $4}')
USEDDISK_PERCENTAGE=$(df -h | grep '/dev/sdd' | awk '{print $5}')

echo "Total disk space: $TOTAL_DISK"
echo "Used disk space: $USED_DISK"
echo "Used disk percentage: $USEDDISK_PERCENTAGE %"
echo "Free disk space: $FREE_DISK"

TOP_CPU=$(top -b -n 1 | tail +7 | sort -k 8 -n -r | head -5 )
TOP_MEM=$(top -b -n 1 | tail +7 | sort -k 9 -n -r | head -5 )

echo "----------Top 5 cpu usage----------"
echo "$TOP_CPU"
echo "----------Top memory usage----------"
echo "$TOP_MEM"