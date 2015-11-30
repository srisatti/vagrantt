#!/bin/bash

# update Centos with any patches
yum update -y --exclude=kernel

#Tools
yum install -y nano git unzip screen


#Apache
Yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on
service httpd stop

rm -rf /var/www/html
ln -s /vagrant /var/www/html

service http start

#PHP

yum install -y php php-cli php-common php-devel php-mysql

# MY Sql

yum install -y mysql mysql-server mysql-devel
chkconfig --add mysqld 
chkconfig mysqld on
 

 service mysqld start 

 mysql -u root -e "Show databases";

 #download starter content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/srisatti/vagrantt/master/files/info.php
sudo -u vagrant wget -q https://raw.githubusercontent.com/srisatti/vagrantt/master/files/info.php
 service apache restart 


