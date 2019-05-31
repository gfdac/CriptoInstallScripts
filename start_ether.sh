#!/usr/bin/env bash
echo "Geth at work!"
#nohup /opt/go-ethereum/build/bin/geth --verbosity 3 --rpc --rpcaddr="localhost" --rpccorsdomain "http://localhost:8545" --rpcapi="db,eth,net,web3,personal" --cache=2048 --maxpeers=50 --syncmode "fast" --rpcport 8545 &
#screen -dmS geth /opt/go-ethereum/build/bin/geth --verbosity 3 --rpc --rpcaddr="localhost" --rpccorsdomain "http://localhost:8545" --rpcapi="db,eth,net,web3,personal" --cache=2048 --maxpeers=50 --fast
screen -dmS geth /opt/go-ethereum/build/bin/geth --verbosity 3 --rpc --rpcaddr="localhost" --rpccorsdomain "http://localhost:8545" --rpcapi="db,eth,net,web3,personal" --cache=2048 --maxpeers=50 --syncmode "fast" --rpcport 8545
