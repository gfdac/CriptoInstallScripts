#!/usr/bin/env bash
echo "Bitcoin Cash at work!"
screen -dmS bch /usr/bin/bitcoind -datadir=/home/guh_clemente/.bitcoin_cash -conf=/home/guh_clemente/.bitcoin_cash/bitcoin.conf  -dbcache=6000 -usecashaddr=0 -daemon

