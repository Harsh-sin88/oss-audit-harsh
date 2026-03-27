#!/bin/bash
# Script 1: System Identity Report
# Author: Harsh Vardhan Singh

STUDENT_NAME="Harsh Vardhan Singh"
SOFTWARE_CHOICE="Git"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime 2>/dev/null || echo "Not available")
DATE=$(date)

echo "================================"
echo "Open Source Audit - $STUDENT_NAME"
echo "================================"
echo "Kernel Version : $KERNEL"
echo "User           : $USER_NAME"
echo "Uptime         : $UPTIME"
echo "Date           : $DATE"