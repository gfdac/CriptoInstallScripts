#!/usr/bin/env bash
echo "Bitcoin at work!"
screen -dmS btc sudo $HOME/bitcoin/src/bitcoind -datadir=/home/guh_clemente/.bitcoin -conf=/home/guh_clemente/.bitcoin/bitcoin.conf -dbcache=6000 -daemon 
