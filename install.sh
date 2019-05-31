#!/usr/bin/env bash

#Instala e controla os Servidores Core de Criptomeads (BTC, ETH, BHC)

#Mensagem de Boas Vindas
function welcome() {
	#CONSTANTES DE TEXTOS
	menu="ESCOLHA UMA DAS OPÇÕES:"
	menu_espacador="-----------------------"
	menu_invalido="Opção informada é inválida."
	menu_voltar="VOLTAR"
	menu_sair="SAIR"

	#menu Inicio
	menu0_01="VERIFICAR STATUS DOS SERVIDORES"
	menu0_02="INSTALAR SERVIDORES"
	menu0_03="UTILITÁRIOS"

	#menu Utils
	menu1_01="CRIAR PARTICAO SWAP"

	#menu Status e Manutencao
	menu2_01="STATUS SERVIDORES"
	menu2_02="INICIAR SERVIDORES"
	menu2_03="PARAR SERVIDORES"

	#Menu Instalar
	menu3_01="INSTALAR BIBLIOTECAS E DEPENDENCIAS"
	menu3_02="INSTALAR BITCOIN"
	menu3_03="INSTALAR ETHEREUM"
	menu3_04="INSTALAR BITCOIN-CASH"
	menu3_05="INSTALAR API PHP CRIPTO MOEDA"
	menu3_06="INSTALAR CRONTAB"
	menu3_07="INSTALAR EXCHANGE CLONEN exchange"
	menu3_08="INSTALAR TODOS"

	aviso_instalado="Sucesso. Reinicie o servidor ubuntu para as cripto moedas comecarem a funcionar."

	#VARIAVEIS
	#Origem dos Scripts
	DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
	#Home Usuario
	CWD="$(pwd)"

	#Mensagem padrao de perguntas.
	OPT="Escolha uma opção: "

	#limpa a tela
	clear

	echo ""
	echo "********************************"
	echo "Instalaçao e Manutenção CORE wfs"
	echo "********************************"

	echo ""

	echo '8""""8 8   8 ""8"" 8   8 8"""88 8"""8'
	echo '8    8 8   8   8   8   8 8    8 8   8'
	echo '8eeee8 8e  8   8e  8eee8 8    8 8eee8e'
	echo '88   8 88  8   88  88  8 8    8 88   8 88'
	echo '88   8 88  8   88  88  8 8    8 88   8'
	echo '88   8 88ee8   88  88  8 8eeee8 88   8 88'

	echo ""

	echo ""
	echo "Gustavo Clemente"
	echo "gfdac.dev@gmail.com"

	# echo "eeeee e   e eeeee eeeee eeeee ee   e eeeee    eeee e     eeee eeeeeee eeee eeeee eeeee eeee   .'  \`.   eeee eeeee ee   e    eeeee eeee eeeee e   e  e eeeee eeeee  e   e"
	# echo "8   8 8   8 8   \"   8   8   8 88   8 8  88    8  8 8     8    8  8  8 8    8   8   8   8     / eeee \  8    8   8 88   8    8   8 8      8   8   8  8 8  88 8   8  8   8"
	# echo "8e    8e  8 8eeee   8e  8eee8 88  e8 8   8    8e   8e    8eee 8e 8  8 8eee 8e  8   8e  8eee |  8ee8  | 8eee 8eee8 88  e8    8e  8 8eee   8e  8e  8  8 8   8 8eee8e 8eee8e"
	# echo "88 '8 88  8    88   88  88  8  8  8  8   8    88   88    88   88 8  8 88   88  8   88  88    \ 88 8 /  88   88     8  8     88  8 88     88  88  8  8 8   8 88   8 88   8"
	# echo "88ee8 88ee8 8ee88   88  88  8  8ee8  8eee8 88 88e8 88eee 88ee 88 8  8 88ee 88  8   88  88ee   \`.__.'   88ee 88     8ee8  88 88  8 88ee   88  88ee8ee8 8eee8 88   8 88   8"

	echo ""
	# echo "***************************************************************************************************************************************************************************"

	echo ""
	echo ""
	echo ""
	echo "Bem vindo, $(whoami)!"
	echo ""
	echo "Hoje é $(date +\%F), são $(date +\%R) e seu sistema operacional é $(uname)."
	echo ""
}

#Sair do Script
function sair() {
	exit 0
}

#Inicio do Script
function inicio() {

	echo
	echo "$menu"
	echo "$menu_espacador"
	echo "1: $menu0_01"
	echo "2: $menu0_02"
	echo "3: $menu0_03"

	echo "0: $menu_sair"
	echo
	#pergunta por qual quer conectar.. aceita alias :D
	read -p "$OPT" ans_yn

	#verifica a resposta do usuario
	case "$ans_yn" in

	[1])
		echo "$menu0_01"
		status

		;;

	[2])
		echo "$menu0_02"
		instalar
		;;

	[3])
		echo "$menu0_03"
		utils
		;;

	[0])
		echo "$menu_sair"
		sair
		;;

	*)
		echo "$menu_invalido"

		#Volta pro inicio da funcao
		inicio
		;;
	esac
}

#Status e manutencao dos Servidores
function status() {
	echo "$menu"
	echo "$menu_espacador"
	echo "1: $menu2_01"
	echo "2: $menu2_02"
	echo "3: $menu2_03"
	echo "0: $menu_voltar"
	echo ""

	#pergunta por qual quer conectar.. aceita alias :D
	read -p "$OPT" s_ans_yn

	#verifica a resposta do usuario
	case "$s_ans_yn" in

	[1])
		echo "$menu2_01"
		#Executa o Script Info Servers
		"$DIR/info-servers.sh"

		#Volta pro inicio da funcao
		status
		;;

	[2])
		echo "$menu2_02"

		#Volta pro inicio da funcao
		status

		;;
	[3])
		echo "$menu2_03"
		# pgrep -f Calculator | awk '{print "sudo kill -9 " $1}'
		pids=$(pgrep Calculator)
		if [ -z "$pids" ]; then
			echo "\$pids está vazio..."
		else
			#Finaliza o PID
			kill -9 $pids
		fi

		#Volta pro inicio da funcao
		status

		;;
	[0])
		echo "$menu_voltar"

		inicio
		;;

	*)

		echo "$menu_invalido"

		#Volta pro inicio da funcao
		status
		;;
	esac
}

#Utils
function utils() {
	echo "$menu"
	echo "$menu_espacador"
	echo "1: $menu1_01"

	echo "0: $menu_voltar"
	echo ""

	#pergunta por qual quer conectar.. aceita alias :D
	read -p "$OPT" s_ans_yn

	#verifica a resposta do usuario
	case "$s_ans_yn" in

	[1])
		echo "$menu1_01"
		#Executa o Script Swap
		"$DIR/swap.sh"

		#Volta pro inicio da funcao
		utils
		;;

	[0])
		echo "$menu_voltar"

		inicio
		;;

	*)

		echo "$menu_invalido"

		#Volta pro inicio da funcao
		status
		;;
	esac
}

#Instalar as Dependencias e os Servidores
function instalar() {
	echo "$menu"
	echo "$menu_espacador"
	echo "1: $menu3_01"
	echo "2: $menu3_02"
	echo "3: $menu3_03"
	echo "4: $menu3_04"
	echo "5: $menu3_05"
	echo "6: $menu3_06"
	echo "7: $menu3_07"
	echo "9: $menu3_08"
	echo "0: $menu_voltar"
	echo ""

	#pergunta por qual quer conectar.. aceita alias :D
	read -p "$OPT" i_ans_yn

	#verifica a resposta do usuario
	case "$i_ans_yn" in

	[1])
		install_bibliotecas

		#Volta pro inicio da funcao
		instalar

		;;

	[2])
		install_bitcoin

		#Volta pro inicio da funcao
		instalar
		;;

	[3])
		install_ethereum
		#Volta pro inicio da funcao
		instalar
		;;

	[4])
		install_bitcoin_cash
		#Volta pro inicio da funcao
		instalar
		;;

	[5])
		echo "$menu3_05"
		install_api_php

		#Volta pro inicio da funcao
		instalar
		;;

	[6])
		echo "$menu3_06"
		install_crontab

		#Volta pro inicio da funcao
		instalar
		;;

	[5])
		echo "$menu3_07"
		install_exchange

		#Volta pro inicio da funcao
		instalar
		;;

	[9])
		echo "$menu3_08"

		#executa todas as chamadas uma por vez :D
		install_bibliotecas
		sleep 3s
		install_bitcoin
		sleep 3s
		install_ethereum
		sleep 3s
		install_bitcoin_cash
		sleep 3s
		install_litecoin
		sleep 3s
		install_api_php
		sleep 3s
		install_crontab
		sleep 3s
		install_exchange
		sleep 3s

		echo "$aviso_instalado"

		#Volta pro inicio da funcao
		instalar
		;;

	[0])
		echo "$menu_voltar"

		inicio
		;;

	*)
		echo "$menu_invalido"

		#Volta pro inicio da funcao
		instalar
		;;
	esac
}

#Instala as Bibliotecas e Dependencias
function install_bibliotecas() {
	# echo "$menu3_01"
	#Executa o Script instalar Bibliotecas
	"$DIR/install-bibliotecas.sh"
}

#Instala o Servidor Bitcoin
function install_bitcoin() {
	# echo "$menu3_02"
	#Executa o Script instalar Bitcoin
	"$DIR/install-bitcoin.sh"
}

#Instala o Servidor Ethereum
function install_ethereum() {
	echo "$menu3_03"
	#Executa o Script instalar Ethereum
	"$DIR/install-ethereum.sh"
}

#Instala o Servidor Bitcoin Cash
function install_bitcoin_cash() {
	# echo "$menu3_04"
	#Executa o Script instalar BitcoinCash
	"$DIR/install-bitcoin-cash-abc.sh"
	sleep 3	
	"$DIR/install-bitcoin-cash-sv.sh"
}


#Instala o Servidor Litecoin
function install_litecoin() {
	#Executa o Script instalar Litecoin
	"$DIR/install-litecoin.sh"
}


#Instala a API PHP
function install_api_php() {
	# echo "$menu3_05"
	#Executa o Script instalar Exchange e API
	"$DIR/install-api-php.sh"
}

#Instala Crontab
function install_crontab() {
	# echo "$menu3_06"
	#Executa o Script instalar Crontab
	"$DIR/install-crontab.sh"
}

#Instala a Exchange
function install_exchange() {
	# echo "$menu3_07"
	#Executa o Script instalar Exchange e API
	"$DIR/install-exchange.sh"
}

#Cria SWAP no servidor
function swap() {
	echo "$menu1_01"
	#Executa o Script criar particao Swap
	"$DIR/swap.sh"
}

#exibe a Mensagem de Boas Vindas
welcome

#inicia o script
inicio

#finaliza o script sem erros
sair
