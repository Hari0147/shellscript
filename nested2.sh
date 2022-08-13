#!/bin/bash
# check argument is supplied
if [ -z $1 ]
then
  echo "you have not entered any argument. please try again"
# If argument is supplied, validate the argument
else
# If the path is directory
  if [ -d $1 ]
  then
    echo "It is a file and it is directory."
# If the path is a file
  elif [ -e $1 ]
  then
    echo "It is a regular file"
# If the file size is greater than zero
  elif [ -s $1 ]
  then
    echo "File exists and it is a empty file"
# If invalid input is supplied
  else
    echo "please enter the valid file or dir path."
  fi
fi  
