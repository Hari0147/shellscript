#!/bin/bash

read -p "Enter your command to execute on remote machines "  CMD
echo
echo "Executeing $CMD commands on the remote machines"
for IP in $(cat /opt/webnodeIP.txt)
do
  echo "execute $CMD command on $IP"
  sudo ssh -i /home/shell/.ssh/id_rsa shell@$IP $CMD
  echo "############################################################################################"
done
echo "Shell scripting is completed......................."
