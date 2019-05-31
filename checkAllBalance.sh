#!/usr/bin/env bash

geth attach http://localhost:8545 << EOF

function checkAllBalances() { 
  var i =0; 
  var total = 0.0;
  eth.accounts.forEach( function(e){
    total += parseFloat(eth.getBalance(e));
    console.log("  eth.accounts["+i+"]: " +  e + " \tbalance: " +
      web3.fromWei(eth.getBalance(e), "ether") + " ether"); 
    i++; 
  })
  console.log("total: " + web3.fromWei(total), "ether");
}; 

checkAllBalances()

exit;

EOF
