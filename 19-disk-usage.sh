#!/bin/bash
DISK_USGAE=$(df -hT | grep -vE 'tmp|file')
DISK_THRESHOLD=1
messgae=""

while IFS=read line
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1 )


if [ $usage -ge $DISK_THRESHOLD ]
    then
        message="High Disk Usage on $partition: $usage <br>"
    fi
    
done <<<$DISK_USAGE