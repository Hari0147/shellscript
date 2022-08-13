#!/bin/bash
echo "Executing commands on your webnodes"
echo 
read -p "Enter your command to execute in webnodes: " CMD
echo
for IP in $(cat /opt/webnodeIP.txt)
do 
  echo "Executing commands on $IP"
  ssh -i /home/shell/.ssh/id_rsa shell@$IP "$CMD; uptime; free -m; w"
  echo "#########################################################"
done
echo "Script is completed........................"
date
