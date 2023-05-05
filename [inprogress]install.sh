#!/bin/bash

# Definindo as cores
green='\033[0;32m'
yellow='\033[1;33m'
NC='\033[0m'

function progress_bar {
    local duration=${1}

    already_done() { for ((done=0; done<$elapsed; done=done+1)); do printf "▇"; done }
    remaining() { for ((remain=$elapsed; remain<$duration; remain=remain+1)); do printf " "; done }
    percentage() { printf "| %s%%" $(( (($elapsed)*100)/($duration)*100/100 )); }

    elapsed=0
    while [ $elapsed -lt $duration ]; do
        printf "${green}"
        already_done; remaining; percentage
        printf "${NC}"
        ((elapsed=elapsed+1))
        sleep 1
        printf "\r"
    done
    printf "${green}"
    already_done; remaining; percentage
    printf "${NC}\n"
}


# Atualizar pacotes do sistema
# Atualizando os pacotes
echo -e "${yellow}Atualizando os pacotes...${NC}"
sudo apt update && sudo apt upgrade -y

# Instalar Docker.io, Docker-compose e Docker
echo -e "${yellow}Instalando o Docker...${NC}"
progress_bar 5 # Define a duração da barra de progresso em segundos (5s)
sudo apt-get install docker.io docker-compose -y

# Clonando o repositório
cd ~
echo -e "${yellow}Clonando o repositório...${NC}"
git clone <placeholder>
cd <placeholder>



echo "Digite a senha do root do banco de dados [default: root]: "
read -s MYSQL_ROOT_PASSWORD
echo -e "\033[1A\033[0K" # Limpa a linha anterior
sed -i "s/^MYSQL_ROOT_PASSWORD=.*/MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}/g" .env
tput cr

echo "Digite o nome do banco de dados [default: whaticketdb]: "
read MYSQL_DATABASE
echo -e "\033[1A\033[0K${MYSQL_DATABASE}" # Limpa a linha anterior e mostra a entrada atual
sed -i "s/^MYSQL_DATABASE=.*/MYSQL_DATABASE=${MYSQL_DATABASE}/g" .env
tput cr

echo "Digite a porta do banco de dados [default: 3306]: "
read MYSQL_PORT
echo -e "\033[1A\033[0K${MYSQL_PORT}" # Limpa a linha anterior e mostra a entrada atual
sed -i "s/^MYSQL_PORT=.*/MYSQL_PORT=${MYSQL_PORT}/g" .env
tput cr


echo "Digite a porta do banco de dados [default: 3306]: "
read MYSQL_PORT
echo -e "\033[1A\033[0K${MYSQL_PORT}" # Limpa a linha anterior e mostra a entrada atual
sed -i "s/^MYSQL_PORT=.*/MYSQL_PORT=${MYSQL_PORT}/g" .env
tput cr
