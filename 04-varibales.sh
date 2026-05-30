#!/bin/bash

echo "Please enter you username"
read USER_NAME # Here USER_NAME is Variable ,what ever user enters in terminal will stored in USER_NAME

echo "Username is $USER_NAME"

echo "Plese enter password"
read -s PASSWORD
# -s will not display in the console what we are entering
echo "Password is: $PASSWORD"