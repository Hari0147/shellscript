#!/bin/bash

: 'Downloading and installing the sloopa website 
through httpd.'

#SVC=apache2
#WEBURL=https://www.tooplate.com/download/2104_sloopa
read -p "Enter your service name: " SVC
read -p "Enter your weburl: " WEBURL

# Installing Apache2 packages
apt install $SVC -y
apt install unzip -y
#enabling $SVC services
systemctl start $SVC
systemctl enable $SVC
echo "################################## #########################"
cd /tmp && wget -o website.zip $WEBURL
cd /tmp/ && unzip website.zip
cp -r /tmp/2104_sloopa/* /var/www/html

#Restarting the services
systemctl restart $SVC
echo
echo "successfully sloopa website is launched. Now go and check in the web $HNAME"
