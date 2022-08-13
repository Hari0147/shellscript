#!/bin/bash

echo "To check connections of webnodes"
for IP in $(cat /opt/webnodeIP.txt)
do
  sudo ssh -i /home/shell/.ssh/id_rsa shell@$IP hostname
  if [ $? -eq 0 ]
  then
    echo "$IP is connected over ssh"
  else
    echo "$IP is not connected over ssh"
  fi
done
date
