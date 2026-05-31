#!/bin/bash

NUM1=10
#NUM2=20
NUM2=linux
# if we give linux in place of number i.e 20 shell wont throw any error while doing sum instead it will ignore in
# doing sum and give's only sum value as 10

SUM=$(($NUM1+$NUM2))
echo "sum is: $SUM"