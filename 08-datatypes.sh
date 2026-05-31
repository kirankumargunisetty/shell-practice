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

echo "Movies are: ${MOVIES[@]}"
echo "First Movie is : ${MOVIES[0]}"
echo "second Movie is : ${MOVIES[1]}"
echo "third Movie is : ${MOVIES[2]}"
echo "fourth Movie is : ${MOVIES[3]}"