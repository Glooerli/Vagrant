#!/usr/bin/env sh

PATH=$PATH:/usr/local/bin

service nginx start
service redis start
service php-fpm start