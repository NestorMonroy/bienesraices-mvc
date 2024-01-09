#!/bin/bash -e

echo "`date` - Start apt-get update" >> $1
sudo apt-get update -y
echo "`date` - End apt-get update" >> $1

echo "`date` - Start apt-get install nodejs npm" >> $1
sudo apt-get install -y -o dir::cache::archives="/vagrant/logs/apt-cache" nodejs npm
echo "`date` - End apt-get install nodejs npm" >> $1

