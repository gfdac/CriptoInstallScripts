#!/usr/bin/env bash
geth attach http://localhost:8545 << EOF
var value = '$1';
var isAddress = web3.isAddress(value);
console.log("Result: " + isAddress);
exit;
EOF
