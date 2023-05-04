#!/bin/bash
read -p "MySQL root password: " MYSQL_ROOT_PASSWORD
read -p "MySQL database name: " MYSQL_DATABASE
read -p "MySQL user name: " MYSQL_USER
read -p "MySQL user password: " MYSQL_PASSWORD
read -p "Database port (leave blank for default 3306): " DB_PORT
read -p "PHPMyAdmin port (leave blank for default 8080): " PHPMYADMIN_PORT

export MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD
export MYSQL_DATABASE=$MYSQL_DATABASE
export MYSQL_USER=$MYSQL_USER
export MYSQL_PASSWORD=$MYSQL_PASSWORD
export DB_PORT=$DB_PORT
export PHPMYADMIN_PORT=$PHPMYADMIN_PORT

docker-compose up -d

echo "MySQL root password: $MYSQL_ROOT_PASSWORD"
echo "MySQL database name: $MYSQL_DATABASE"
echo "MySQL user name: $MYSQL_USER"
echo "MySQL user password: $MYSQL_PASSWORD"
echo "Database port: ${DB_PORT:-3306}"
echo "PHPMyAdmin port: ${PHPMYADMIN_PORT:-8080}"
