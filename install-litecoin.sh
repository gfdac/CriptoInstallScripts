#!/usr/bin/env bash

#Instalacao do servidor Litecoin
echo
echo "Instalando Servidor Litecoin"


#Origem dos Scripts
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd $HOME
sudo rm -rf $HOME/litecoin

sudo git clone https://github.com/litecoin-project/litecoin litecoin
cd litecoin
sudo ./autogen.sh



#BERKLEY DB4.8
export BDB_PREFIX="$HOME/db4"
#export BDB_PREFIX='/home/ubuntu/db4'
sudo ./configure BDB_LIBS="-L${BDB_PREFIX}/lib -ldb_cxx-4.8" BDB_CFLAGS="-I${BDB_PREFIX}/include" --with-incompatible-bdb



sudo make -s -j4
sudo make install 

#Cria diretorio de configuracao e copia arquivo de configuracao
mkdir -p $HOME/.litecoin
cp $DIR/configs/litecoin.conf $HOME/.litecoin/