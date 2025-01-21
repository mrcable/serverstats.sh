#!/bin/bash

# serverstats: a script that shows stats, on servers!
# written by cable

# CPU usage
echo "CPU usage"
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 -$8}')
echo "Total CPU in use: $CPU_USAGE"

echo ""

# MEM usage
echo "Memory usage"
MEM_USAGE=$(free -m | awk 'NR==2 {printf "Used: %d MB, Free: %d MB (%.2f%% used)", $3, $4, $3*100/($3+$4)}')
echo $MEM_USAGE

echo ""

# Disk usage
echo Disk usage
DISK_USAGE=$(df -h --total | grep 'total' | awk '{printf "Used: %s Free: %s (%.2f%% used)", $3, $4, $5}')
echo $DISK_USAGE

echo ""

# most cpu-heavy processes
echo Top 5 processes by CPU usage
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

echo ""

echo Top 5 processes by memory usage
ps -eo pid,comm,%mem --sort=-%mem | head -n 6

echo 

echo Logged in users
LOGGED_IN_USERS=$(echo "Total amount of unique users logged in:" $(w -h | awk '{print $1}' | sort | uniq | tee /dev/stderr | wc -l))
echo $LOGGED_IN_USERS

echo

echo Uptime
UPTIME=$(uptime -p)
echo Uptime: $UPTIME
