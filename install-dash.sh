#!/usr/bin/env bash


#Instalacao do servidor DASH
echo
echo "Instalando Servidor Dash"

#Origem dos Scripts
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd $HOME
sudo rm -rf dash/
# sudo git clone https://github.com/dashpay/dash.git dash
# cd dash
# sudo ./autogen.sh

#BERKLEY DB4.8
export BDB_PREFIX="$HOME/db4"
#export BDB_PREFIX='/home/ubuntu/db4'
# sudo ./configure BDB_LIBS="-L${BDB_PREFIX}/lib -ldb_cxx-4.8" BDB_CFLAGS="-I${BDB_PREFIX}/include" --with-incompatible-bdb
#sudo ./configure CPPFLAGS="-I${BDB_PREFIX}/include/ -O2" LDFLAGS="-L${BDB_PREFIX}/lib/" --without-gui --with-incompatible-bdb

# sudo make -s -j4
#sudo make install


wget -c https://github.com/dashpay/dash/releases/download/v0.14.0.0-rc1/dashcore-0.14.0.0-rc1-x86_64-linux-gnu.tar.gz
tar zxpvf dashcore-0.14.0.0-rc1-x86_64-linux-gnu.tar.gz
  
mv $HOME/dashcore-0.14.0 $HOME/dash
rm -rf dashcore-0.14.0.0-rc1-x86_64-linux-gnu.tar.gz



mkdir -p $HOME/.dashcore
cp $DIR/configs/dash.conf $HOME/.dashcore/

#Cria diretorio de configuracao e copia arquivo de configuracao
