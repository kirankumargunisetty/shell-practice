#!/bin/bash
echo "Please enter you PERSON1"
read PERSON1 # Here USER_NAME is Variable ,what ever user enters in terminal will stored in USER_NAME

echo "PERSON1 is $PERSON1"

echo "Plese enter PERSON2"
read PERSON2

echo "PERSON2 is: $PERSON2"

#PERSON1=$1
#PERSON2=$2
# there wont be any space in = if you compare above lines there is no space before or after
# if we run sh 03-varibales.sh Trump Iran -> Trump is fisrt arument so it will stored in $1 and 
# Iran is second argument it will be stored in $2

echo "$PERSON1: Hey $PERSON2, we are going to blast you!"
# if the anything starts from $ shell consider it as Variable
echo "$PERSON2: Yes, Please . You are Welcome"
echo "$PERSON1: Hey $PERSON2 I am Serious"
echo "$PERSON2: Hey $PERSON1, We are also serious" 