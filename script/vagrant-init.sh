#!/bin/bash -e

echo "`date` - Start apt-get update" >> $1
sudo apt-get update -y
echo "`date` - End apt-get update" >> $1

echo "`date` - Start apt-get upgrade" >> $1
sudo apt-get upgrade -y
echo "`date` - End apt-get upgrade" >> $1

echo "`date` - Start apt-get install nodejs" >> $1
# sudo apt-get install -y -o dir::cache::archives="/vagrant/logs/apt-cache" nodejs npm
curl -fsSL https://deb.nodesource.com/setup_21.x | sudo -E bash - &&\
sudo apt-get install -y nodejs
echo "`date` - End apt-get install nodejs" >> $1

node -v >> $1
npm -v >> $1
