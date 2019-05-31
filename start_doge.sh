#!/usr/bin/env bash
echo "Dogecoin at work!"
screen -dmS doge /opt/dogecoin/src/dogecoind -datadir=/home/guh_clemente/.dogecoin -conf=/home/guh_clemente/.dogecoin/dogecoin.conf -dbcache=6000 -daemon

