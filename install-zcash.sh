#!/usr/bin/env bash

#Dependencias
sudo apt-get install -y build-essential pkg-config libc6-dev m4 g++-multilib autoconf libtool ncurses-dev unzip git python python-zmq zlib1g-dev wget curl bsdmainutils automake

#Origem dos Scripts
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd $HOME
sudo rm -rf zcash/
sudo git clone https://github.com/zcash/zcash.git zcash
cd zcash
git checkout v2.0.0
sudo ./zcutil/fetch-params.sh
sudo ./zcutil/build.sh -j4

#Cria diretorio de configuracao e copia arquivo de configuracao
mkdir -p $HOME/.zcash
cp $DIR/configs/zcash.conf $HOME/.zcash/