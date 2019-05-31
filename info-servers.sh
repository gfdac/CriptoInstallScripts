#!/usr/bin/env bash

function checkServers() {
	echo "Bitcoin server status: "

	echo "Dash server status: "

	echo "Litecoin server status: "

	echo "ZCash server status: "

	echo "Bitcoin Cash server status: "

	echo "Ethereum server status: "

	echo "Dogecoin server status: "

	echo "wfs server status: "

	echo "Bitcoin2x server status: "

}


function bitcoin() {
	echo "Bitcoin"

	echo "1 - Balance:"
	echo "2 - BlockChain Info:"

	read -p "Qual informacao deseja? " info_

	case "$info_" in

	[1] | "balance")
		printf "Balance at date and time %s\n" "$now"
		$HOME/bitcoin/src/bitcoin-cli -datadir=$HOME/.bitcoin -conf=$HOME/.bitcoin/bitcoin.conf getbalance
		inicia
		;;

	[2] | "info")
		printf "Blockchain Info at date and time %s\n" "$now"
		$HOME/bitcoin/src/bitcoin-cli -datadir=$HOME/.bitcoin -conf=$HOME/.bitcoin/bitcoin.conf getblockchaininfo
		inicia
		;;

	*)
		echo "Nenhuma opcao valida foi selecionada..."
		inicia
		exit 3
		;;
	esac
}

function dash() {
	echo "Dash"

	echo "1 - Balance:"
	echo "2 - BlockChain Info:"

	read -p "Qual informacao deseja? " info_

	case "$info_" in

	[1] | "balance")
		/opt/dash/src/dash-cli -datadir=$HOME/.dashcore -conf=$HOME/.dashcore/dash.conf getbalance
		inicia
		;;

	[2] | "info")
		/opt/dash/src/dash-cli -datadir=$HOME/.dashcore -conf=$HOME/.dashcore/dash.conf getblockchaininfo
		inicia
		;;

	*)
		echo "Nenhuma opcao valida foi selecionada..."

		inicia

		exit 3
		;;
	esac
}

function litecoin() {
	echo "Litecoin"

	echo "1 - Balance:"
	echo "2 - BlockChain Info:"

	read -p "Qual informacao deseja? " info_

	case "$info_" in

	[1] | "balance")
		/opt/litecoin/src/litecoin-cli -datadir=$HOME/.litecoin -conf=$HOME/.litecoin/litecoin.conf getbalance
		inicia
		;;

	[2] | "info")
		/opt/litecoin/src/litecoin-cli -datadir=$HOME/.litecoin -conf=$HOME/.litecoin/litecoin.conf getblockchaininfo
		inicia
		;;

	*)
		echo "Nenhuma opcao valida foi selecionada..."

		inicia

		exit 3
		;;
	esac
}

function zcash() {
	echo "Zcash"

	echo "1 - Balance:"
	echo "2 - BlockChain Info:"

	read -p "Qual informacao deseja? " info_

	case "$info_" in

	[1] | "balance")
		/opt/zcash/src/zcash-cli -datadir=$HOME/.zcash -conf=$HOME/.zcash/zcash.conf getbalance
		inicia
		;;

	[2] | "info")
		/opt/zcash/src/zcash-cli -datadir=$HOME/.zcash -conf=$HOME/.zcash/zcash.conf getblockchaininfo
		inicia
		;;

	*)
		echo "Nenhuma opcao valida foi selecionada..."

		inicia

		exit 3
		;;
	esac
}

function bitcoincash() {
	echo "Bitcoin Cash"

	echo "1 - Balance:"
	echo "2 - BlockChain Info:"

	read -p "Qual informacao deseja? " info_

	case "$info_" in

	[1] | "balance")
		$HOME/bitcoin-cash/bin/bitcoin-cli -datadir=$HOME/.bitcoin_cash -conf=$HOME/.bitcoin_cash/bitcoin.conf getbalance
		inicia
		;;

	[2] | "info")
		$HOME/bitcoin-cash/bin/bitcoin-cli -datadir=$HOME/.bitcoin_cash -conf=$HOME/.bitcoin_cash/bitcoin.conf getblockchaininfo
		inicia
		;;

	*)
		echo "Nenhuma opcao valida foi selecionada..."

		inicia

		exit 3
		;;
	esac
}

function dogecoin() {
	echo "Dogecoin"

	echo "1 - Balance:"
	echo "2 - BlockChain Info:"

	read -p "Qual informacao deseja? " info_

	case "$info_" in

	[1] | "balance")
		/opt/dogecoin/src/dogecoin-cli -datadir=$HOME/.dogecoin -conf=$HOME/.dogecoin/dogecoin.conf getbalance
		inicia
		;;

	[2] | "info")
		/opt/dogecoin/src/dogecoin-cli -datadir=$HOME/.dogecoin -conf=$HOME/.dogecoin/dogecoin.conf getblockchaininfo
		inicia
		;;

	*)
		echo "Nenhuma opcao valida foi selecionada..."

		inicia

		exit 3
		;;
	esac
}

function bitcoin2x() {
	echo "Bitcoin2x"

	echo "1 - Balance:"
	echo "2 - BlockChain Info:"

	read -p "Qual informacao deseja? " info_

	case "$info_" in

	[1] | "balance")
		/opt/bitcoin2x/src/bitcoin2x-cli -datadir=$HOME/.bitcoin2x -conf=$HOME/.bitcoin2x/bitcoin.conf getbalance
		inicia
		;;

	[2] | "info")
		/opt/bitcoin2x/src/bitcoin2x-cli -datadir=$HOME/.bitcoin2x -conf=$HOME/.bitcoin2x/bitcoin.conf getblockchaininfo
		inicia
		;;

	*)
		echo "Nenhuma opcao valida foi selecionada..."

		inicia

		exit 3
		;;
	esac
}

function ethereum() {
	echo "Ethereum"

	echo "1 - Balance:"
	echo "2 - BlockChain Info:"

	read -p "Qual informacao deseja? " info_

	case "$info_" in

	[1] | "balance")
		#/opt/bitcoin2x/src/bitcoin2x-cli -datadir=$HOME/.bitcoin2x -conf=$HOME/.bitcoin2x/bitcoin.conf getbalance
		inicia
		;;

	[2] | "info")
		#/opt/bitcoin2x/src/bitcoin2x-cli -datadir=$HOME/.bitcoin2x -conf=$HOME/.bitcoin2x/bitcoin.conf getblockchaininfo
		inicia
		;;

	*)
		echo "Nenhuma opcao valida foi selecionada..."

		inicia

		exit 3
		;;
	esac
}

function wfs() {
	echo "wfs"

	echo "1 - Balance:"
	echo "2 - BlockChain Info:"

	read -p "Qual informacao deseja? " info_

	case "$info_" in

	[1] | "balance")
		#/opt/bitcoin2x/src/bitcoin2x-cli -datadir=$HOME/.bitcoin2x -conf=$HOME/.bitcoin2x/bitcoin.conf getbalance
		inicia
		;;

	[2] | "info")
		#/opt/bitcoin2x/src/bitcoin2x-cli -datadir=$HOME/.bitcoin2x -conf=$HOME/.bitcoin2x/bitcoin.conf getblockchaininfo
		inicia
		;;

	*)
		echo "Nenhuma opcao valida foi selecionada..."

		inicia

		exit 3
		;;
	esac
}

function inicia() {

	echo "1: Bitcoin - BTC"
	# echo "2 - Dash - DASH";
	# echo "3 - Litecoin - LTC";
	# echo "4 - Zcash - ZEC";

	echo "2: Ethereum - ETH"
	echo "3: Bitcoin Cash - BCH"
	# echo "7 - Dogecoin - DOGE";
	echo "4: wfs - wfs"
	# echo "9 - Bitcoin2x - B2X";
	echo "0: Sair"

	#now="$(date)"
	#now="$(date +'%d/%m/%Y')"

	now=$(date +%d-%m-%Y" "%H:%M:%S)

	read -p "Qual servidor deseja informação? " ans_yn

	#verifica a resposta do usuario
	case "$ans_yn" in
	#[Yy]|[Yy][Ee][Ss]) echo "Replacing ...";;

	[1] | "btc")
		bitcoin
		;;

	[2] | "eth")
		ethereum
		;;

	[3] | "bch")
		bitcoincash
		;;

	[4] | "wfs")
		zcash
		;;

	[0] | "exit")
		echo "Saindo"
		exit 3
		;;

	\
		*)
		echo "Nenhuma opcao valida foi selecionada..."
		inicia
		;;
	esac
}

# checkServers
inicia

exit 0
