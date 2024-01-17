#!/bin/bash -e
export START_SYSTEM_LOG_FILE=/vagrant/logs/app/app.log
rm -f /vagrant/logs/app/*.log

echo "`date` - Start `echo $0`" > $START_SYSTEM_LOG_FILE
bash /vagrant/script/vagrant-init.sh $START_SYSTEM_LOG_FILE

if [ ! -f /vagrant/logs/app/vagrant_provision-folder ]; then
    mkdir ~/vagrant_node_modules
    mkdir /vagrant/app/node_modules
    sudo mount --bind ~/vagrant_node_modules /vagrant/app/node_modules
    touch /vagrant/logs/app/vagrant_provision-folder
fi

if [ ! -f /vagrant/logs/app/vagrant_provision-app ]; then
    cd /vagrant/app/
    npm install
    touch /vagrant/logs/app/vagrant_provision-app
fi


echo "`date` - Ended `echo $0` - OK" >> $START_SYSTEM_LOG_FILE
