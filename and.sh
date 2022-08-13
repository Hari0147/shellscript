#!/bin/bash
# AND operation
echo "AND operations"
if [[ -n $1 ]] && [[ -d $1 ]]
then
  echo "This file is a directory and taking backup of this $1 directory"
  sudo tar -czvf backupdir.tar.gz $1
elif [[ -n $1 ]] && [[ -e $1 ]]
then
  echo "This is a regular file and taking backup of this $1 file."
  sudo tar -czvf backupfile.tar.gz $1
  sudo mv /mnt/scripts/backupfile.tar.gz $2
  cd $2 && sudo tar -xvf backupfile.tar.gz
elif [[ -z $1 ]]
then
  echo "you have not entered any input. Retry!!!"
else
  echo "Invalid path of a file or directory."
fi

