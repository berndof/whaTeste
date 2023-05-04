#!/bin/bash
read -p "MySQL root password: " -e -i "root_password" MYSQL_ROOT_PASSWORD
read -p "MySQL database name: " -e -i "database_name" MYSQL_DATABASE
read -p "MySQL user name: " -e -i "user_name" MYSQL_USER
read -p "MySQL user password: " -e -i "user_pass" MYSQL_PASSWORD
read -p "Database port (leave blank for default 3306): " -e -i "db_port" DB_PORT
read -p "PHPMyAdmin port (leave blank for default 8080): " -e -i "php_port" PHPMYADMIN_PORT

export MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD
export MYSQL_DATABASE=$MYSQL_DATABASE
export MYSQL_USER=$MYSQL_USER
export MYSQL_PASSWORD=$MYSQL_PASSWORD
export DB_PORT=$DB_PORT
export PHPMYADMIN_PORT=$PHPMYADMIN_PORT

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
echo "execute o comando docker ps para ver se os containers estão rodando"
echo "teste o http://localhost:8080 para ver se o php my admin esta funcionando"
