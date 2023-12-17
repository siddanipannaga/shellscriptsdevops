#!/bin/bash

ID=$(id -u)
if [ $ID -ne 0 ]
then
   echo "ERROR: Please run this script with root user"
   exit 1 # 
else
   echo "You are a root user"
fi
echo "all arguments passed $@"

