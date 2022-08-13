#!/bin/bash

echo "To check whether the servers is up or not"
for IP in $(cat /opt/webnodeIP.txt)
do
  ssh shell@$IP
done
