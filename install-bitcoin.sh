#!/usr/bin/env bash

#Instalacao do servidor Bitcoin
echo
echo "Instalando Servidor Bitcoin"


#Origem dos Scripts
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd $HOME
sudo rm -rf $HOME/bitcoin
sudo git clone https://github.com/bitcoin/bitcoin.git bitcoin
cd bitcoin
sudo ./autogen.sh
#BERKLEY DB4.8
export BDB_PREFIX="$HOME/db4"
#export BDB_PREFIX='/home/ubuntu/db4'
sudo ./configure BDB_LIBS="-L${BDB_PREFIX}/lib -ldb_cxx-4.8" BDB_CFLAGS="-I${BDB_PREFIX}/include" --with-incompatible-bdb
sudo make -s -j4
# sudo make install

#Cria diretorio de configuracao e copia arquivo de configuracao
mkdir -p $HOME/.bitcoin
cp $DIR/configs/bitcoin.conf $HOME/.bitcoin/