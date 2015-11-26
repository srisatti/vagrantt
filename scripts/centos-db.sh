#!/bin/bash
# Mysql

yum install -y mysql mysql-server mysql-devel
chkconfig --add mysqld
chkconfig mysqld on

service mysqld start

mysql -u root -e "SHOW DATABASES";

#Download starter content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/srisatti/vagrantt/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/srisatti/vagrantt/master/files/info.php
service httpd restart

