#!/usr/bin/env bash
echo "Litecoin at work!"
screen -dmS ltc  sudo /opt/litecoin/src/litecoind -datadir=/home/guh_clemente/.litecoin -conf=/home/guh_clemente/.litecoin/litecoin.conf -dbcache=6000 -daemon

