#!/bin/bash
echo
echo "Executing commands on webodes-IP"
for IP in $(cat /opt/webnodeIP.txt)
do
  echo "executing commands on $IP"
  ssh -i /home/shell/.ssh/id_rsa shell@$IP '
    echo "Executing free -m"
    free -m
    echo "###################################################"
    echo "Executing uptime"
    uptime
    echo "#######################################################"
    echo "Executing df -h"
    df -h
    echo "#####################################################"
  '
done
echo "Script is completed......................."
sleep 30
echo "sleep $SECONDS"
date
 
