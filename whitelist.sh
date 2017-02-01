#!/bin/sh

service denyhosts stop
echo "$1" >>  /var/lib/denyhosts/allowed-hosts
sed -i "/$1/d" /etc/hosts.deny
sed -i "/$1/d" /var/lib/denyhosts/hosts
sed -i "/$1/d" /var/lib/denyhosts/hosts-restricted
sed -i "/$1/d" /var/lib/denyhosts/hosts-root
sed -i "/$1/d" /var/lib/denyhosts/hosts-valid
service denyhosts start
