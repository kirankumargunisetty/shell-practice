#!/bin/bash

USERID=$(id -u)

#check root access or not
if [ $USERID -ne 0 ]; then
    echo "Please run this script with sudo access"
    exit 1 # if we comment this line code wont break it will print the i am continuing line and then exit
fi

#echo "I am continuing..."

echo "Installing Postgresql"
dnf install postgresql -y

if [ $? -ne 0 ]; then
    echo "Installing Postgresql is ... Failed"
    exit 1
else
    echo installing Postgresql is ... SUCCESS
fi