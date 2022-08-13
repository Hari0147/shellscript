#!/bin/bash

#If operation practices
echo
read -p "Enter a number: " NUM
echo "You have entered a number is $NUM"
echo
if [ $NUM -gt 100 ]
then
  echo "Your have entered the number is greater than 100"
elif [ $NUM -eq 100 ]
then
  echo "You enetered the number is equal to hundred"
else [ $NUM -lt 100 ]
  echo "you have entered the number is less than 100"
fi
