#!/bin/bash

c=1
while false
do
  echo "Looping..................."
  echo "Value of c is $c"
  c=$(( $c+1 ))
done
