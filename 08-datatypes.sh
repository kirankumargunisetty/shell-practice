#!/bin/bash

NUM1=10
#NUM2=20
NUM2=linux
# if we give linux in place of number i.e 20 shell wont throw any error while doing sum instead it will ignore in
# doing sum and give's only sum value as 10

SUM=$(($NUM1+$NUM2))
echo "sum is: $SUM"

#Array
MOVIES=("RRR" "Varanasi" "Pushpa") # index always starts from 0

echo "Movies are: ${MOVIES[@]}" # it prints all movies
echo "First Movie is : ${MOVIES[0]}" # it print only 0th indext value
echo "second Movie is : ${MOVIES[1]}" # it prints only 1st index value
echo "third Movie is : ${MOVIES[2]}" # it prints only 2nd index value
echo "fourth Movie is : ${MOVIES[3]}" # it print nothing because there is no 4th index value