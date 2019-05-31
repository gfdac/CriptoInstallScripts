#!/usr/bin/env bash
NOW=$(date +"%m-%d-%Y %T")

#Instalacao inicializacoes no Crontab
echo
echo "Instalando serviços no Cron"

#limpa crontab
crontab -r
#Install crontab for start servers
(crontab -l 2>/dev/null; echo "#SCRIPTS INICIALIZACAO CORE E MANUTENCAO DA EXCHANGE") | crontab -
(crontab -l 2>/dev/null; echo "#Author: Gustavo Clemente") | crontab -
(crontab -l 2>/dev/null; echo "#E-mail: gfdac.dev@gmail.com") | crontab -
(crontab -l 2>/dev/null; echo "#Data: $NOW") | crontab -
(crontab -l 2>/dev/null; echo "") | crontab -

(crontab -l 2>/dev/null; echo "#BITCOIN") | crontab -
(crontab -l 2>/dev/null; echo "@reboot $HOME/bitcoin/src/bitcoind -datadir=$HOME/.bitcoin -conf=$HOME/.bitcoin/bitcoin.conf -dbcache=6000 -daemon") | crontab -
(crontab -l 2>/dev/null; echo "") | crontab -

(crontab -l 2>/dev/null; echo "#ETHEREUM") | crontab -
(crontab -l 2>/dev/null; echo "@reboot $HOME/go-ethereum/build/bin/geth --verbosity 3 --rpc --rpcaddr=\"localhost\" --rpccorsdomain \"http://localhost:8545\" --rpcapi=\"db,eth,net,web3,personal\" --cache=2048 --maxpeers=50 --syncmode \"fast\" --rpcport 8545") | crontab -
(crontab -l 2>/dev/null; echo "") | crontab -

(crontab -l 2>/dev/null; echo "#BITCOIN CASH") | crontab -
(crontab -l 2>/dev/null; echo "@reboot $HOME/bitcoin-cash/bin/bitcoind -datadir=$HOME/.bitcoin_cash -conf=$HOME/.bitcoin_cash/bitcoin-cash.conf -dbcache=6000 -usecashaddr=0 -maxoutconnections=30 -daemon") | crontab -
(crontab -l 2>/dev/null; echo "") | crontab -

(crontab -l 2>/dev/null; echo "#BITCOIN CASH ABC") | crontab -
(crontab -l 2>/dev/null; echo "@reboot $HOME/bitcoin-cash-abc/bin/bitcoind -datadir=$HOME/.bitcoin_cash_abc -conf=$HOME/.bitcoin_cash_abc/bitcoin-cash-abc.conf -dbcache=6000 -usecashaddr=0 -maxoutconnections=30 -daemon") | crontab -
(crontab -l 2>/dev/null; echo "") | crontab -

(crontab -l 2>/dev/null; echo "#BITCOIN CASH SV") | crontab -
(crontab -l 2>/dev/null; echo "@reboot $HOME/bitcoin-cash-sv/bin/bitcoind -datadir=$HOME/.bitcoin_cash_sv -conf=$HOME/.bitcoin_cash_sv/bitcoin-cash-sv.conf -dbcache=6000 -usecashaddr=0 -maxoutconnections=30 -daemon") | crontab -
(crontab -l 2>/dev/null; echo "") | crontab -

(crontab -l 2>/dev/null; echo "#LITECOIN") | crontab -
(crontab -l 2>/dev/null; echo "@reboot $HOME/litecoin/src/litecoind -datadir=$HOME/.litecoin -conf=$HOME/.litecoin/litecoin.conf -dbcache=6000 -maxoutconnections=30 -daemon") | crontab -
(crontab -l 2>/dev/null; echo "") | crontab -

(crontab -l 2>/dev/null; echo "#DASH") | crontab -
(crontab -l 2>/dev/null; echo "@reboot $HOME/dash/src/dashd -datadir=$HOME/.dashcore -conf=$HOME/.dashcore/dash.conf -dbcache=6000 -maxoutconnections=30 -daemon") | crontab -
(crontab -l 2>/dev/null; echo "") | crontab -

(crontab -l 2>/dev/null; echo "#DOGECOIN") | crontab -
(crontab -l 2>/dev/null; echo "@reboot $HOME/dogecoin/bin/dogecoind -datadir=$HOME/.dogecoin -conf=$HOME/.dogecoin/dogecoin.conf -dbcache=6000 -maxoutconnections=30 -daemon") | crontab -
(crontab -l 2>/dev/null; echo "") | crontab -

(crontab -l 2>/dev/null; echo "#ZCASH") | crontab -
(crontab -l 2>/dev/null; echo "@reboot $HOME/zcash/src/zcashd -datadir=$HOME/.zcash -conf=$HOME/.zcash/zcash.conf -dbcache=6000 -maxoutconnections=30 -daemon") | crontab -
(crontab -l 2>/dev/null; echo "") | crontab -

(crontab -l 2>/dev/null; echo "#IOTA") | crontab -
(crontab -l 2>/dev/null; echo "@reboot java -jar /home/ubuntu/iota/target/iri-1.5.3.jar -p 14265  -c /home/ubuntu/.iota/iota.ini") | crontab -
(crontab -l 2>/dev/null; echo "") | crontab -

(crontab -l 2>/dev/null; echo "#DEPOSITOS NA EXCHANGE") | crontab -
(crontab -l 2>/dev/null; echo "*/10 * * * * $HOME/CriptoInstallScripts/depositos.sh") | crontab -
(crontab -l 2>/dev/null; echo "") | crontab -

(crontab -l 2>/dev/null; echo "#DEPOSITOS ANTIGOS NA EXCHANGE") | crontab -
(crontab -l 2>/dev/null; echo "*/50 * * * * $HOME/CriptoInstallScripts/depositos-antigos.sh") | crontab -
(crontab -l 2>/dev/null; echo "") | crontab -

(crontab -l 2>/dev/null; echo "#ATUALIZA VALORES BTC E USD DAS MOEDAS DIGITAIS BASE COINMARKETCAP") | crontab -
(crontab -l 2>/dev/null; echo "*/3  * * * * $HOME/CriptoInstallScripts/dadosmoeda.sh") | crontab -
(crontab -l 2>/dev/null; echo "") | crontab -

(crontab -l 2>/dev/null; echo "#LIBERA TRANSACOES NO CORE ETHER QUE FICAM PENDENTES") | crontab -
(crontab -l 2>/dev/null; echo "*/55  * * * * $HOME/CriptoInstallScripts/pendentes.sh") | crontab -
(crontab -l 2>/dev/null; echo "") | crontab -


(crontab -l 2>/dev/null; echo "#ATUALIZA OS CODIGOS DO GITHUB") | crontab -
(crontab -l 2>/dev/null; echo "*/10  * * * * $HOME/CriptoInstallScripts/atualizar.sh") | crontab -
(crontab -l 2>/dev/null; echo "") | crontab -