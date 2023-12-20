#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"
LOGFILE="/tmp/$0-$TIMESTAMP.log"
VALIDATE(){ 

if [ $1 -ne 0 ]
then
   echo  -e "ERROR: $2 is $R failed $N"
   exit 1 # 
else
   echo "$2 is $G sucess $N"
fi
}
if [ $ID -ne 0 ]
then
   echo -e "$R ERROR: Please run this script with root user $N  "
   exit 1 # 
else
   echo "You are a root user"
fi
 yum install mysql-server -y &>>LOGFILE
 
 VALIDATE $? "Iinstalling mysql"

 yum install git -y &>>LOGFILE

 VALIDATE $? "Installing git "