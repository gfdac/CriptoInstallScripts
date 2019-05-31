#!/usr/bin/env bash
#versao unificada para qualquer token ERC-20
#recebe como parametros
#Montante - 1
#Carteira - 2
#Symbol - 3
#Contrato - 4
#Coinbase - 5
#Password Coinbase - 6
#GAS = 7 (90000)

#EX: ./sendToken.sh 1.0000000 carteira_Destino SYMBOL CONTRATO COINBASE PASSWORD GAS(90000)


NOW=$(date +"%m-%d-%Y %T")

printf "Data: %s \n" "$NOW" >> ./sendToken.log
printf 'Enviando para a carteira %s o montante %s da moeda %s pela coinbase %s \n' "$2" "$1"  "$4"  "$5" >> ./sendToken.log


geth attach http://localhost:8545 << EOF
loadScript("/home/ubuntu/scripts_coin/geth/token.js")

#COINBASE DO TOKEN
var fromAccount = '$5';
personal.unlockAccount(fromAccount, '$6');

#CONTRATO DO TOKEN
var wtokenContractAddress = '$4';

var wtoken = tokenContract.at(wtokenContractAddress);
wtoken.symbol();
wtoken.name();
wtoken.balanceOf(fromAccount);
wtoken.decimals();

#var value = web3.toWei('$1', "finney");
var value = '$1';

var toAddress = "$2";
#var gasPrice =  web3.toWei(0.00000001, "ether");
#var gasPrice =  web3.toWei(0.3, 'gwei');
var gasPrice =  web3.eth.gasPrice;
#var gas = web3.toWei(0.0021, 'gwei');

var gas = '$7';
var data = '$8';
value;
gasPrice;
gas;

wtoken.transfer(toAddress, value, { from: fromAccount, gas: gas,  gasPrice: gasPrice , data: data }, function (err, txHash) {
if (err)
console.log(err);
if (txHash) {
console.log('Transaction sent ' + txHash)
console.dir(txHash)
}
})

exit;

EOF
