#!/bin/bash

c=1
while [ $c -le 5 ]
do
  echo "while looping......................."
  echo "Value of c is $c"
  c=$(( $c+1 ))
done
echo "While Loop is completed because it is satisfied its condition"
