#!/bin/bash

echo "To check the connection of the nodes through script"
echo
for IP in $(cat /opt/webnodeIP.txt)
do
  ssh -i /home/shell/.ssh/id_rsa shell@$IP hostname
  ssh -i /home/shell/.ssh/id_rsa shell@$IP free -m
  ssh -i /home/shell/.ssh/id_rsa shell@$IP df -h
  echo "###############################################"
done
echo "script is completed......"
