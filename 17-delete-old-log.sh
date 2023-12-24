#!/bin/bash

SOURCE_DIR=/tmp/shellscript-logs
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d $SOURCE_DIR ] #! denotes opposite not exist ! -d indicated the diractory not exist. 
then    
    echo -e " $R source directory: SOURCE_DIR does not exit : $N "
fi
FILES TO DELETE= $(find . -type f -mtime +14 -name "*.log")

while IFS = read -r line
do 
    echo " Deleting the file :$line "
done <<< $FILE TO DELETE