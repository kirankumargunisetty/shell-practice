#!/bin/bash

USERID=$(id -u)
LOGS_DIR=/var/log/shell-script
LOGS_FILE="$LOGS_DIR/$0.log"

#check root access or not
if [ $USERID -ne 0 ]; then
    echo "Please run this script with sudo access"
    exit 1 # if we comment this line code wont break it will print the i am continuing line and then exit
fi

# first arg -> what are we trying to installing
# second arg -> exit code
VALIDATE(){
    if [ $? -ne 0 ]; then
        echo "Installing Postgresql is ... Failed" | tee -a $LOGS_FILE
        exit 1
    else
        echo "installing Postgresql is ... SUCCESS" | tee -a $LOGS_FILE
    fi
}
#echo "I am continuing..."
dnf list installed postgresql &>> $LOGS_FILE

if [ $? -eq 0 ]; then
    echo "Postgresql is already installed... SKIPPING" | tee -a $LOGS_FILE
else
    echo "Installing Postgresql" | tee -a $LOGS_FILE
    dnf install postgresql -y &>> $LOGS_FILE
    VALIDATE postgresql $?
fi

dnf list installed nginx &>> $LOGS_FILE

if [ $? -eq 0 ]; then
    echo "nginx is already installed... SKIPPING" | tee -a $LOGS_FILE
else
    echo "Installing nginx" | tee -a $LOGS_FILE
    dnf install nginx -y &>> $LOGS_FILE
    VALIDATE nginx $?
fi