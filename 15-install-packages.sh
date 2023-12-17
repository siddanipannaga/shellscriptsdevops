#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0- $TIMESTAMP.log"
echo "script started executing at $TIMESTAMP" &>> LOGFILE
VALIDATE (){
   then
      echo -e "$2... $R failed $N "   
   else
      echo -e "$2...$R sucess $N "
      fi
}
if [ $ID -ne 0 ]
then
   echo -e  "$R ERROR: Please run this script with root user $N"
   exit 1 # 
else
   echo "You are a root user"
fi
# echo "all arguments passed $@"

for package in $0
do
   yum list installed $package &>> LOGFILE
   if [  $? -ne 0]
   then
   yum install $package -y &>> LOGFILE
   VALIDATE $? "Installation of package"
   else
      echo -e "$package is already installed....$Y skipping $N"
   fi
done 

