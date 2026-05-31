#!/bin/bash

USERID=$(id -u)

#check root access or not
if [ $USERID -ne 0 ]; then
    echo "Please run this script with sudo access"
    exit 1 # if we comment this line code wont break it will print the i am continuing line and then exit
fi

# first arg -> what are we trying to installing
# second arg -> exit code
VALIDATE(){
    if [ $? -ne 0 ]; then
        echo "Installing Postgresql is ... Failed"
        exit 1
    else
        echo installing Postgresql is ... SUCCESS
    fi
}
#echo "I am continuing..."
dnf list installed postgresql

if [ $? -eq 0 ]; then
    echo "Postgresql is already installed... SKIPPING"
else
    echo "Installing Postgresql"
    dnf install postgresql -y
    VALIDATE postgresql $?
fi

dnf list installed nginx

if [ $? -eq 0 ]; then
    echo "nginx is already installed... SKIPPING"
else
    echo "Installing nginx"
    dnf install nginx -y
    VALIDATE nginx $?
fi