#!/usr/bin/env bash

#Instalacao do servidor Iota
echo
echo "Instalando Servidor Iota"

#Origem dos Scripts
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#Dependencias
sudo apt install -y git maven default-jre default-jdk

cd $HOME
sudo rm -rf $HOME/iota
sudo git clone https://github.com/iotaledger/iri iota
cd iota
mvn clean compile
mvn package

#Cria diretorio de configuracao e copia arquivo de configuracao
mkdir -p $HOME/.iota
cp $DIR/configs/iota.ini $HOME/.iota/

#Inicia o servidor IOTA com base no arquivo de configuracao
# java -jar /home/ubuntu/iota/target/iri-1.5.3.jar -p 14265  -c /home/ubuntu/.iota/iota.ini

#testa conexao com servidor IOTA
# curl http://127.0.0.1:14265 -X POST -H 'Content-Type: application/json' -H 'X-IOTA-API-Version: 1' -d '{"command": "getNodeInfo"}'