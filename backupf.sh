#!/bin/bash

echo "Welcome USER $USER."
echo "We are running script on $HOSTNAME"

echo "You have passed $# arguments"
echo "##############################################"

echo "Below mentioned the arguments that you passed:"

echo $@
echo "####################################################"
echo $$
