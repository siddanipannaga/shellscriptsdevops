#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
if [ $ID -ne 0 ]
then
   echo " $R ERROR: Please run this script with root user $N"
   exit 1 # 
else
   echo "You are a root user"
fi
echo "all arguments passed $@"

