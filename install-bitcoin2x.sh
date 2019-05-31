#!/usr/bin/env bash

sudo git clone https://github.com/SegwitB2X/bitcoin2x.git
cd bitcoin2x
sudo ./autogen.sh
sudo ./configure
#berkley 4.8 db folder
#sudo ./configure LDFLAGS="-L/usr/local/db4/lib/" CPPFLAGS="-I/usr/local/db4/include/"
sudo make -j2

