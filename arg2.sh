#!/bin/bash
SCRIPTS=backupfiles.tar.gz
echo "We are taking backup of scripts"
echo
echo "backup files are $1"
echo "Archiving of $1"
sudo tar -cvzf $SCRIPTS $1
echo "Previous command is $?"
sudo mv $SCRIPTS $2
echo
echo "SCRIPTS are successfully moved to $2"
cd /opt
sudo tar -xvf $SCRIPTS
echo "backup is completed successfully."
