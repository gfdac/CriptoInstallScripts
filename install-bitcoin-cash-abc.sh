#!/usr/bin/env bash

#Instalacao do servidor Bitcoin Cash ABC
echo
echo "Instalando Servidor Bitcoin Cash ABC"

#Origem dos Scripts
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#UNPACK BINARY MODE
cd $HOME
rm -rf $HOME/bitcoin-cash-abc

#pega o codigo no git
wget -c https://download.bitcoinabc.org/0.19.2/linux/bitcoin-abc-0.19.2-x86_64-linux-gnu.tar.gz
tar zxpvf bitcoin-abc-0.19.2-x86_64-linux-gnu.tar.gz
mv $HOME/bitcoin-abc-0.19.2 $HOME/bitcoin-cash-abc
rm -rf bitcoin-abc-0.19.2-x86_64-linux-gnu.tar.gz

mkdir -p $HOME/.bitcoin_cash_abc
cp $DIR/configs/bitcoin-cash-abc.conf $HOME/.bitcoin_cash_abc/

#Cria diretorio de configuracao e copia arquivo de configuracao
