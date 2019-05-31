#!/usr/bin/env bash

#Instalacao do servidor Bitcoin Cash
echo
echo "Instalando Servidor Bitcoin Cash SV"

#Origem dos Scripts
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#UNPACK BINARY MODE
cd $HOME
rm -rf $HOME/bitcoin-cash
#64Bit
#wget -c https://github.com/bitcoin-sv/bitcoin-sv/releases/download/v0.1.0/bitcoin-sv-0.1.0-x86_64-linux-gnu.tar.gz
wget -c https://download.bitcoinsv.io/bitcoinsv/0.1.1/bitcoin-sv-0.1.1-x86_64-linux-gnu.tar.gz
tar zxpvf bitcoin-sv-0.1.1-x86_64-linux-gnu.tar.gz
  
mv $HOME/bitcoin-sv-0.1.1 $HOME/bitcoin-cash-sv
rm -rf bitcoin-sv-0.1.1-x86_64-linux-gnu.tar.gz

mkdir -p $HOME/.bitcoin_cash_sv
cp $DIR/configs/bitcoin-cash-sv.conf $HOME/.bitcoin_cash_sv/

#Cria diretorio de configuracao e copia arquivo de configuracao
