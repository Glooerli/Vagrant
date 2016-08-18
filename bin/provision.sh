#!/usr/bin/env bash

sudo yum install -y epel-release

sudo yum install -y nginx php php-dom php-pdo php-pdo_mysql php-mysql mysql php-devel php-pear php-redis php-fpm openssl openssl-devel redis gcc gcc-c++


rm /etc/hosts
ln -s /vagrant/conf/hosts /etc/hosts

rm /etc/redis.conf
ln -s /vagrant/conf/redis.conf /etc/redis.conf

cp /vagrant/conf/nginx/conf/* /etc/nginx/conf.d
cp /vagrant/conf/nginx/* /etc/nginx/

touch /vagrant/provisioned

echo "Provisioning done! Please create a file called 'provisioned' and run 'vagrant reload'"