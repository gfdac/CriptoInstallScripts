#!/usr/bin/env bash

geth attach "http://127.0.0.1:8545" << EOF

function checkAllBalances() { 
  var i =0; 
  var total = 0.0;
  eth.accounts.forEach( function(e){
    total += parseFloat(eth.getBalance(e));
    i++; 
  })
  console.log("total: " + web3.fromWei(total));
}; 

checkAllBalances()

exit;

EOF
