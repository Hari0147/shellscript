 #!/bin/bash

read -p "Enter your number:" NUM
echo "you have entered the number is $NUM"
echo
if [ $NUM -gt 100 ]
then
  echo "We have entered in IF block"
  echo "you have entered more than 100"
elif [ $NUM -lt 100 ]
then
  echo "We have entered in less IF block"
  echo "you have entered less than 100"
else
  echo "you are not entered in IF block"
fi
