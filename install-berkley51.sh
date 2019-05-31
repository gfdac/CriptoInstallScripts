#!/usr/bin/env bash

cd /usr/local/src
sudo wget -qO- http://download.oracle.com/berkeley-db/db-5.1.19.tar.gz | sudo tar xzv
cd db-5.1.19/build_unix
sudo ../dist/configure --prefix=/usr/local --enable-cxx
sudo make && sudo make install

cd /opt
