#!/bin/bash
# OR operations
echo "OR operations"
if [[ -d $1 ]] || [[ -e $1 ]]
then
  if [[ -d $1 ]]
  then
    echo "you have entered dir path, its taking backup of $1"
    sudo tar -czvf backupdir.tar.gz $1
  else 
    echo "you have entered file path and taking its backup of $1"
    sudo tar -czvf backupfile.tar.gz $1
  fi
elif [[ -z $1 ]]
then
  echo "you have not entered any input!!!..."
else
  echo "please enter the valid path"
fi
