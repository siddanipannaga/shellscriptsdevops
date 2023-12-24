#!/bin/bash
file=etc/passwd
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -f $file ] #! denotes opposite not exist ! -d indicated the diractory not exist. 
then    
    echo -e " $R source directory: $file does not exit : $N "
fi
while IFS= read -r username passwd user_id group_id user_fullname home_dir shell_path
do 
    echo "user name: $username"
    echo "user id: $user_id"
    echo "user full name : $user_fullname"
    
done < $file


