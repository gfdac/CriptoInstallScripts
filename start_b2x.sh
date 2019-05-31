#!/usr/bin/env bash
echo "Bitcoin2x at work!"
screen -dmS b2x /opt/bitcoin2x/src/bitcoin2xd -datadir=/home/guh_clemente/.bitcoin2x -conf=/home/guh_clemente/.bitcoin2x/bitcoin.conf -dbcache=6000 -daemon 

