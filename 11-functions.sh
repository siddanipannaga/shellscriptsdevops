#!/bin/bash

ID=$(id -u)
VALIDATE(){ 

if [ $? -ne 0 ]
then
   echo "ERROR: install is failed"
   exit 1 # 
else
   echo "Install is sucess"
fi
}
if [ $ID -ne 0 ]
then
   echo "ERROR: Please run this script with root user"
   exit 1 # 
else
   echo "You are a root user"
fi
 yum install mysql-server -y
 
 VALIDATE

 yum install git -y