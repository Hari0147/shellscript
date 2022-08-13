#!/bin/bash
echo "We are running script on $HOSTNAME"
read -p "Enter a number: " NUM
echo "you have entered number is $NUM"
echo "you have passed $# arguments"
echo "#####################################################"
echo "The above arguments are shown below "
echo "######################################################"
echo $@
