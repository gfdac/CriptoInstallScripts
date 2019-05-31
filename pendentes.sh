#!/usr/bin/env bash

geth attach << EOF


eth.resend = function (tx, gasPrice, gas) {
  if (gasPrice) {
    tx.gasPrice = gasPrice;
  }
  if (gas) {
    tx.gas = gas;
  }
  tx.data = tx.input;
  return eth.sendTransaction(tx);
};


eth.resendgwei = function (tx, gasPriceInGwei, gas) {
  if (gasPriceInGwei) {
    return eth.resend(tx, web3.toWei(gasPriceInGwei, 'gwei'), gas);
  }
  else {
    return eth.resend(tx, null, gas);
  }
};

console.log("Pendentes: " + eth.pendingTransactions.length + "\n");

//lista as transacoes pendentes
//eth.getBlock("pending", true).transactions;

//eth.pendingTransactions;

//destrava a coinbase
//personal.unlockAccount(eth.coinbase, "ether2017");
personal.unlockAccount(eth.coinbase, "BTHether2018");

for (var i = 0; i < eth.pendingTransactions.length ;  i ++ ) {

try {
//personal.unlockAccount(eth.pendingTransactions[i].from, "ether2017");
personal.unlockAccount(eth.pendingTransactions[i].from, "BTHether2018");
eth.resendgwei(eth.pendingTransactions[i], 41);
}
catch(e) {
  console.log("invalid tx resend: " + e);
}

};

exit;

EOF
