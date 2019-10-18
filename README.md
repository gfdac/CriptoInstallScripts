#PASSOS INSTALACAO SERVIDORES DE CRIPTO MOEDAS

#Author: Gustavo Clemente

#gfdac.dev@gmail.com

#Início Desenvolvimento: 01/fev/2018

#Revisado em:            31/maio/2019


#Servidores atualmente suportados
#BITCOIN - BTC
#BITCOIN CASH - BCH
#BITCOIN CASH SV - BSV
#LITECOIN - LTC
#ZCASH - ZCASH
#DOGECOIN - DOGE
#DASHCOIN - DASH
#ETHEREUM - ETH (COM TOKENS ERC-20)

#DEMAIS MOEDAS EM IMPLEMENTAÇÃO.

#Instalacao dos Scripts

#---------------------------------------------------------------------------------------------------


#Usuario ubuntu

#Path /home/ubuntu

#Usar os seguintes comandos para instalacao dos scripts:
cd $HOME
sudo apt install -y unzip curl wget git
sudo git clone https://github.com/pandabr/CriptoInstallScripts.git

#Execute o arquivo install.sh e selecione a opção que desejar:
cd CriptoInstallScripts
./install.sh 
#Opcao 2 Instalar
#Opcao 9 Todos


#Etapas Necessarias para instalacao dos Servidores Cripto Moedas
#---------------------------------------------------------------------------------------------------
#1 - Instalacao do Sistema e bibliotecas (Instala as bibliotecas de sistemas e dependencias necessárias para as criptos)

#Instalacao do MYSQL e Configuracao Senha/Usuarios

#Instalacao do Composer


#2 - Instalacao Servidor CriptoMoeda (Compilação dos códigos fontes)

#Instalacao do CORE Bitcoin

#Instalacao do CORE Ethereum

#Instalacao do CORE Bitcoin-Cash


#3 - Configuracao Servidor CriptoMoeda (Criaçao de pastas e configs)

#Configuracao do CORE Bitcoin

#Configuracao do CORE Ethereum

#Configuracao do CORE Bitcoin-Cash


#4 - Instalacao da API CORE (API PHP Core Cripto Moedas) (*INDISPONIVEL*)

#Instalacao do BD API CORE

#Edicao Links e URLS

#Edicao DB CONF


#5 - CRONTAB (Inicializa os servicos necessarios para funcionamento das cripto moedas)

#start moeda btc (inicia servidor de bitcoin)

#start moeda eth (inicia servidor de ethereum)

#start moeda bch (inicia servidor de bitcoin cash)

#depositos moeda digital (veririca os depositos na exchange)

#pendentes (desencavala transacoes pendentens no ethereum/tokens)



#6 - UTILS (Informação sobre status e manutencao dos servicos de cripto moedas)

#STATUS DO SERVIDOR (VER PROCESSO/VER PORTA/GET INFO CURL SERVIDOR)

#PARAR SERVIDOR (KILL PROCESS)

#INICIAR SERVIDOR (SHELL CRON START)


Video Tutorial Instalação dos Scripts.
https://www.youtube.com/watch?v=IEkPZyYJ0d8
