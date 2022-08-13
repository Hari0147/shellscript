#!/bin/bash

# Looping over 1 2 3 4  5
echo "Looping over 1 2 3 4 5"
for i in 1 2 3 4 5
do 
  echo "welcome $i times"
  echo "#############################"
done
date
echo
# Lopping over Range {1..5}
echo "Looping over Range 1-5"
echo "#######################################"
for i in {1..5}
do 
  echo "Welocme $i tyms"
  echo "#############################"
done

echo
# Looping over Range 1-5 using seq command
echo "Looping over range 1-5 by using seq command"
echo "########################"
for i in $(seq 1 5)
do
  echo "Welcome $i times"
  echo "##############################"
done

echo
# Looping and incrementing variable value
echo "Looping and incrementing variable value"
for ((c>=1; c<=5; c++))
do
  echo "Welcome $c tims"
  echo "#########################################"
done
date

echo "Loop is completed in all types!!!!"
