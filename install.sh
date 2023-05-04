#!/bin/bash
read -p "MySQL root password: " -s MYSQL_ROOT_PASSWORD
tput cuu1 && tput el
read -p "MySQL database name: " -s MYSQL_DATABASE
tput cuu1 && tput el
read -p "MySQL user name: " -s MYSQL_USER
tput cuu1 && tput el
read -p "MySQL user password: " -s MYSQL_PASSWORD
tput cuu1 && tput el
read -p "Database port (leave blank for default 3306): " -s DB_PORT
tput cuu1 && tput el
read -p "PHPMyAdmin port (leave blank for default 8080): " -s PHPMYADMIN_PORT
tput cuu1 && tput el

export MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD
export MYSQL_DATABASE=$MYSQL_DATABASE
export MYSQL_USER=$MYSQL_USER
export MYSQL_PASSWORD=$MYSQL_PASSWORD
export DB_PORT=$DB_PORT
export PHPMYADMIN_PORT=$PHPMYADMIN_PORT

chmod +x install.sh

docker-compose up -d
clear

printf "\n\nAs seguintes configurações foram definidas:\n"
printf "--------------------------------------------\n"
printf "  MySQL root password: %s\n" "$MYSQL_ROOT_PASSWORD"
printf "  MySQL database name: %s\n" "$MYSQL_DATABASE"
printf "  MySQL user name: %s\n" "$MYSQL_USER"
printf "  MySQL user password: %s\n" "$MYSQL_PASSWORD"
printf "  Database port: %s\n" "${DB_PORT:-3306}"
printf "  PHPMyAdmin port: %s\n" "${PHPMYADMIN_PORT:-8080}"
