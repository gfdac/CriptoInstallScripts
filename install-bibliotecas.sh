#!/usr/bin/env bash


#Instalacao das bibliotecas e dependencias
echo
echo "Instalando Bibliotecas e Dependencias"

#VARIAVEIS
#Origem dos Scripts
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#UPDATE SERVER
echo
echo "Instalando Atualizacoes"
sleep 3s
# sudo add-apt-repository -y ppa:ondrej/php
sudo apt update && sudo apt upgrade

#INSTALAR APACHE2
# echo
# echo "Instalando Apache2"
# sleep 3s
# sudo apt -y install apache2

#salvando lista de pacotes atuais para possivel futura compatibilidade
dpkg -l | grep php | tee ~/packages.txt

#REMOVER PHP 7.X
#sudo apt purge -y php7.0* php7.0 php7.0-common
#sudo apt purge -y php7.1* php7.1 php7.1-common
#sudo apt purge -y php7.2* php7.2 php7.2-common
#sudo apt purge -y php7.3* php7.3 php7.3-common

#INSTALAR PHP 7.1 E SEUS MODULOS
# echo
# echo "Instalando PHP 7.1"
# sleep 3s
# sudo add-apt-repository -y --allow-unauthenticated ppa:ondrej/php
# sudo apt update
sudo apt-get -y --allow-unauthenticated install unzip
# sudo apt-get -y --allow-unauthenticated install mysql-server 
# sudo apt-get -y --allow-unauthenticated install php7.1 php7.1 php7.1-xml php7.1-xsl php7.1-mbstring php7.1-readline php7.1-zip php7.1-mysql php7.1-phpdbg php7.1-interbase php7.1-sybase php7.1 php7.1-sqlite3 php7.1-tidy php7.1-opcache php7.1-pspell php7.1-json php7.1-xmlrpc php7.1-curl php7.1-ldap php7.1-bz2 php7.1-cgi php7.1-imap php7.1-cli php7.1-dba php7.1-dev php7.1-intl php7.1-fpm php7.1-recode php7.1-odbc php7.1-gmp php7.1-common php7.1-pgsql php7.1-bcmath php7.1-snmp php7.1-soap php7.1-mcrypt php7.1-gd php7.1-enchant libapache2-mod-php7.1 libphp7.1-embed
# sudo apt-get -y --allow-unauthenticated install php7.1 php7.1-common php7.1-cli php7.1-fpm
# sudo apt-get -y --allow-unauthenticated install php7.1-curl php7.1-xml php7.1-zip php7.1-gd php7.1-mysql php7.1-mbstring php7.1-json php-memcached php7.1-dev php7.1-sqlite3 php7.1-bcmath php7.1-mcrypt
# sudo apt-get -y --allow-unauthenticated install php-mbstring php-gettext
# sudo apt-get -y --allow-unauthenticated install php7.1-bcmath
# sudo apt-get -y --allow-unauthenticated install libapache2-mod-php7.1 libapache2-mod-php

#sudo apt-get -y install phpmyadmin 

#CONFIGURANDO MYSQL 
# echo "Configurando MySQL"
# sleep 3s
# sudo mysql_secure_installation

#INSTALAR DEPENDENCIAS
echo
echo "Instalando Dependencias"
sleep 3s
sudo apt-get -y install build-essential libtool autotools-dev autoconf pkg-config libssl-dev
sudo apt-get -y install libtool-bin
sudo apt-get -y install libboost-all-dev
sudo apt-get -y install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
sudo apt-get -y install libqrencode-dev
sudo apt-get -y install libminiupnpc-dev
sudo apt-get -y install libevent-dev
sudo apt-get install -y build-essential libssl-dev




#HABILITA PHP 7.1
# sudo a2enconf php7.1
# sudo a2enmod php7.1

#INSTALAR GO LANG 1.9
echo
echo "Instalando GO LANG 1.9"
sleep 3s
sudo apt-get update
sudo apt-get -y upgrade

#sudo apt install golang-go

cd $HOME

#64Bit
sudo wget https://storage.googleapis.com/golang/go1.9.2.linux-amd64.tar.gz
sudo tar -xvf go1.9.2.linux-amd64.tar.gz
sudo rm -rf go1.9.2.linux-amd64.tar.gz

#32Bit
# sudo wget https://storage.googleapis.com/golang/go1.9.2.linux-386.tar.gz
# sudo tar -xvf go1.9.2.linux-386.tar.gz
# sudo rm -rf go1.9.2.linux-386.tar.gz
#sudo mv go /usr/local

if [ -z "$GOROOT" ]; then
	export GOROOT=$HOME/go
	export GOPATH=$HOME/go
	
    #Cria links simbolicos
	sudo rm -rf /usr/bin/go
	sudo rm -rf /usr/local/go
    sudo ln -s $HOME/go/bin/go /usr/bin/go
    sudo ln -s $HOME/go/ /usr/local/

    #Deixa gravado no .bashrc o EXPORT
	echo "" >>$HOME/.bashrc
	echo "#GO LANG ETHEREUM - SCRIPT CORE SERVER" >> $HOME/.bashrc
	echo "#Author: gfdac.dev@gmail.com" >> $HOME/.bashrc
	echo "export GOROOT=$HOME/go" >> $HOME/.bashrc
	echo "export GOPATH=$HOME/go" >> $HOME/.bashrc
	echo "export PATH=$PATH:$HOME/go/bin:/usr/local/go/bin" >> $HOME/.bashrc

fi

#Berkley DB 4.8
echo "Instalando Berkley DB 4.8"
echo
sleep 3s
$DIR/install-berkley48.sh $HOME



#COMPOSER
echo "Instalando Composer"
echo
sleep 3s
cd $HOME
#curl -sS https://getcomposer.org/installer -o composer-setup.php
curl -sS https://getcomposer.org/installer | php 
sudo mv composer.phar /usr/local/bin/composer

#instala asset fx bowser :D
sudo composer global require "fxp/composer-asset-plugin:^1.3.1"


#NODE JSJ
echo "Instalando NODE JS"
echo
sleep 3s
cd $HOME
sudo apt-get install -y npm
curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt-get install -y nodejs
