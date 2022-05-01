#!/bin/bash
# Starts the MySQL server

if [ ! -e /var/run/mysqld/gitpod-init.lock ]
then
    touch /var/run/mysqld/gitpod-init.lock

    # initialize database structures on disk, if needed
    [ ! -d /workspace/mysql ] && mysqld --initialize-insecure

    # launch database, if not running
    [ ! -e /var/run/mysqld/mysqld.pid ] && mysqld --daemonize

    rm /var/run/mysqld/gitpod-init.lock
fi

gp await-port 3306
gp await-port 33060

# Create read user with read only privileges
mysql -u root -e "CREATE USER IF NOT EXISTS 'read'@'localhost'; GRANT SELECT ON *.* TO 'read'@'localhost'; FLUSH PRIVILEGES;"
