#!/usr/bin/env bash

#install-openssl

#instalar openssl
#sudo apt-get install libssl-dev

cd $HOME
#cd /usr/local/src
wget -qO- http://www.openssl.org/source/openssl-1.0.1f.tar.gz | tar xzv
cd openssl-1.0.1f
sudo ./config shared --prefix=/usr/local --openssldir=/usr/local/ssl
sudo make && sudo make install