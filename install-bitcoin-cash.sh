#!/usr/bin/env bash

#Instalacao do servidor Bitcoin Cash
echo
echo "Instalando Servidor Bitcoin Cash"


#SOURCE COMPILE MODE 1
# cd $HOME
# sudo git clone https://github.com/BitcoinUnlimited/BitcoinUnlimited.git bitcoin-cash
# cd bitcoin-cash/
# sudo git checkout release
# sudo ./autogen.sh
# export BDB_PREFIX='$HOME/db4'
# sudo ./configure BDB_LIBS="-L${BDB_PREFIX}/lib -ldb_cxx-4.8" BDB_CFLAGS="-I${BDB_PREFIX}/include" --with-incompatible-bdb
# #sudo ./configure --with-incompatible-bdb
# sudo make -s -j4
# #sudo make install

#SOURCE COMPILE MODE 2
# cd $HOME
# sudo apt-get -y install git build-essential libtool autotools-dev automake pkg-config
# sudo apt-get -y install libssl-dev libevent-dev bsdmainutils libboost-all-dev
# sudo apt-get -y install libqt4-dev libprotobuf-dev protobuf-compiler libqrencode-dev #opt: only needed if you want bitcoin-qt
# sudo apt-get -y install software-properties-common                               #opt: only needed if your wallet uses the old format
# sudo add-apt-repository -y ppa:bitcoin-unlimited/bu-ppa                          #     this is not needed if your wallet will use the new
# sudo apt-get update                                                           #     format, or if you're not going to use a wallet at all
# sudo apt-get install -y libdb4.8-dev libdb4.8++-dev
# git clone https://github.com/BitcoinUnlimited/BitcoinUnlimited.git bitcoin-cash
# cd bitcoin-cash
# git checkout release
# sudo ./autogen.sh
# sudo ./configure --with-libressla
# sudo make -s -j4
#sudo make install

#Origem dos Scripts
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#UNPACK BINARY MODE
cd $HOME
rm -rf $HOME/bitcoin-cash
#64Bit
wget -c https://github.com/BitcoinUnlimited/BitcoinUnlimitedWebDownloads/raw/master/BUcash-1.5.0.1-linux64.tar.gz
tar zxpvf BUcash-1.5.0.1-linux64.tar.gz

#32Bit
# wget -c https://github.com/BitcoinUnlimited/BitcoinUnlimitedWebDownloads/raw/master/BUcash-1.4.0.0-linux32.tar.gz
# tar zxpvf BUcash-1.4.0.0-linux32.tar.gz

mv $HOME/BUcash-1.5.0.1 $HOME/bitcoin-cash
rm -rf BUcash-1.5.0.1-linux64.tar.gz

mkdir -p $HOME/.bitcoin_cash
cp $DIR/configs/bitcoin-cash.conf $HOME/.bitcoin_cash/

#Cria diretorio de configuracao e copia arquivo de configuracao
