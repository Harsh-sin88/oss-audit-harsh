#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Harsh Vardhan Singh

echo "Directory Audit Report"
echo "----------------------"

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

for DIR in "${DIRS[@]}"
do
    echo ""
    echo "Checking: $DIR"

    if [ -d "$DIR" ]
    then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "Permissions : $PERMS"
        echo "Disk Usage  : $SIZE"
    else
        echo "Directory not found on this system"
    fi
done