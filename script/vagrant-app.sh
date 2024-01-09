#!/bin/bash -e
export BOOTSTRAP_LOG_FILE=/vagrant/logs/app/bootstrap.log
rm -f /vagrant/logs/app/*.log

echo "`date` - Start `echo $0`" > $BOOTSTRAP_LOG_FILE

bash /vagrant/script/vagrant-init.sh $BOOTSTRAP_LOG_FILE

if [ ! -f /vagrant/logs/app/vagrant_provision-app ]; then
    cd /vagrant/app/
    npm init -y

    touch /vagrant/logs/app/vagrant_provision-app
fi


echo "`date` - Ended `echo $0` - OK" >> $BOOTSTRAP_LOG_FILE