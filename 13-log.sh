#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
VALIDATE(){ 

if [ $1 -ne 0 ]
then
   echo "ERROR: $2 is failed"
   exit 1 # 
else
   echo "$2 is sucess"
fi
}
if [ $ID -ne 0 ]
then
   echo "ERROR: Please run this script with root user"
   exit 1 # 
else
   echo "You are a root user"
fi
 yum install mysql-server -y &>>LOGFILE
 
 VALIDATE $? "Iinstalling mysql"

 yum install git -y &>>LOGFILE

 VALIDATE $? "Installing git "