#!/bin/bash
value=`ip addr show | grep -v loopback | grep -ic mtu`
echo
if [ $value -eq 1 ]
then
  echo "1 active network interface found"
elif [ $value -gt 1 ]
then
  echo "multiple active network interface found"
else
  echo "no active network interface found"
fi
