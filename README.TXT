#PASSOS INSTALACAO SERVIDORES DO CORE DE CRIPTO MOEDAS, API E EXCHANGE

#Author: Gustavo Clemente
#gfdac.dev@gmail.com
#Início Desenvolvimento: 01/fev/2018
#Revisado em:            10/jul/2018

#Instalacao dos Scripts
#---------------------------------------------------------------------------------------------------
#Baixar e descompactar os scripts: https://core.14bit.com/scripts_coin.zip
#Deixar o caminho dos scripts no padrao $HOME/scripts_coin/

#Usar os seguintes comandos para instalacao dos scripts:
cd $HOME
sudo apt install -y unzip curl wget git
wget https://core.14bit.com/scripts_coin-master.zip
unzip -u scripts_coin-master.zip

#Execute o arquivo install.sh e selecione a opção que desejar:
cd scripts_coin
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

#4 - Instalacao da API CORE (API PHP Core Cripto Moedas)
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


#7 - Instalacao da EXCHANGE (Exchange Clone 14Bit)
#Instalacao do BD EXCHANGE
#Edicao Links e URLS
#Edicao DB CONF




#---------------------------------------------------------------------------------------------------
#Endereço desta documentação:
#https://privatebin.net/?37dd75e784c42c5f#4PenLMPDGVnK8dmgP3/gDnmv1n4L2pnYippJL71S8TA=
#senha: 14bit14