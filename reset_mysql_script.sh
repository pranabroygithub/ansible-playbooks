#!/bin/bash

TEMP=$(sudo grep 'temporary password' /var/log/mysqld.log | awk -F' ' '{print $13}')

mysql --connect-expired-password -u root -p$TEMP -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '!bM@1997';"
