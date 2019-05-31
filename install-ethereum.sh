#!/usr/bin/env bash

#Instalacao do servidor Ethereum
echo
echo "Instalando Servidor Ethereum"

#Install from Source
cd $HOME
sudo rm -rf $HOME/go-ethereum
sudo git clone https://github.com/ethereum/go-ethereum go-ethereum
cd go-ethereum
#Go LANG EXPORT
export GOROOT=$HOME/go
sudo make geth


#Install from PPA
#sudo apt-get install software-properties-common
#sudo add-apt-repository -y ppa:ethereum/ethereum
#sudo apt-get update
#sudo apt-get install ethereum

#Cria diretorio de configuracao e copia arquivo de configuracao


#ATUALIZA SOURCE GIT
# cd go-ethereum
# sudo git pull
# export GOROOT=$HOME/go
# sudo make geth


#apaga link antigo caso exista
sudo rm -rf /usr/local/bin/geth

#Cria link simbolico para usar com PATH
sudo ln -s $HOME/go-ethereum/build/bin/geth /usr/local/bin/geth

#Teste geth
#$HOME/go-ethereum/build/bin/geth --help
geth --help