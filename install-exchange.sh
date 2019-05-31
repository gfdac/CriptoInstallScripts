#!/usr/bin/env bash

#install Exchange and all necessary itens

#Origem dos Scripts
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#Instalacao da EXCHANGE (download do zip)
echo
echo "Instalando Exchange"

cd $HOME
curl https://core.exchange.com/exchange-master.zip -O
unzip -u -o exchange-master.zip
sudo rm -rf /var/www/html/exchange
sudo mv exchange-master /var/www/html/exchange
cd /var/www/html/exchange
sudo composer install
sudo composer update
#/usr/local/bin/composer update
sudo chmod 777 /var/www/html/exchange/web/assets
sudo chmod 777 /var/www/html/exchange/runtime

#Edicao Links e URLS (REMOVIDO DEVIDO ALTERACAO AGORA EXCHANGE BUSCA DIRETO NO SEU BD AS URLS)
# echo ""
# read -p "Substituir endereço de chamada da API Exchange atual https://exchange.com/exchange/ por: " n1
# sudo "$DIR/find_and_replace_in_files.sh" "https://exchange.com/exchange/" "$n1"

# echo ""
# read -p "Substituir endereço de chamada da API CORE atual https://core.exchange.com/exchangePHP/ por: " n2
# sudo "$DIR/find_and_replace_in_files.sh" "https://core.exchange.com/exchangePHP/" "$n2"

#Instalacao do BD EXCHANGE
cd $HOME
curl https://core.exchange.com/exchange.sql -O

mysql -u root -p -e "create database exchange"

#mysql -u root -pM@#$@#$$$$$$@ZNL###$!@KHN exchange < $HOME/exchange.sql
mysql -u root -p exchange <$HOME/exchange.sql
