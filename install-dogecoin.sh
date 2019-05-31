#!/usr/bin/env bash


#Instalacao do servidor DOGECOIN
echo
echo "Instalando Servidor DOGECOIN"

#Origem dos Scripts
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd $HOME
sudo rm -rf dogecoin/

#64Bit
wget -c https://github.com/dogecoin/dogecoin/releases/download/v1.10.0/dogecoin-1.10.0-linux64.tar.gz
tar zxpvf dogecoin-1.10.0-linux64.tar.gz

#32Bit
# wget -c https://github.com/dogecoin/dogecoin/releases/download/v1.10.0/dogecoin-1.10.0-linux32.tar.gz
# tar zxpvf dogecoin-1.10.0-linux32.tar.gz

mv $HOME/dogecoin-1.10.0 $HOME/dogecoin
rm -rf dogecoin-1.10.0-linux64.tar.gz

# sudo git clone https://github.com/dogecoin/dogecoin dogecoin
# cd dogecoin/
# sudo ./autogen.sh

# export OPENSSL_PREFIX="/usr/src/openssl-1.0.2p"
# #sudo ./configure CRYPTO_LIBS="-L${OPENSSL_PREFIX}/lib" CRYPTO_CFLAGS="-I${OPENSSL_PREFIX}/include"  SSL_LIBS="-L${OPENSSL_PREFIX}/lib" SSL_CFLAGS="-I${OPENSSL_PREFIX}/include"  --with-incompatible-bdb --without-gui --without-libressl
# sudo ./configure SSL_LIBS="-L${OPENSSL_PREFIX}/lib" SSL_CFLAGS="-I${OPENSSL_PREFIX}/include"  --with-incompatible-bdb --without-gui --without-libressl
# #sudo ./configure  --enable-cxx --with-incompatible-bdb --without-gui --without-libressl
# sudo make -s -j4
# #sudo make install


#Cria diretorio de configuracao e copia arquivo de configuracao
if [ ! -f $HOME/.dogecoin/dogecoin.conf ]; then
    mkdir -p $HOME/.dogecoin
    cp $DIR/configs/dogecoin.conf $HOME/.dogecoin/

    #insere usuario e password aleatoria
    # echo rpcuser=alice > $HOME/.dogecoin/dogecoin.conf
    # PWord=`cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 64 | head -n 1`
    # echo rpcpassword=$PWord >> $HOME/.dogecoin/dogecoin.conf

#se tiver arquivo .conf faz backup e copia o novo
else
    mv $HOME/.dogecoin/dogecoin.conf $HOME/.dogecoin/dogecoin_antigo.conf
    cp $DIR/configs/dogecoin.conf $HOME/.dogecoin/
fi