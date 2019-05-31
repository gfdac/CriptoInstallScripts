#!/usr/bin/env bash
echo "ZCash at work!"
screen -dmS zec  /opt/zcash/src/zcashd -datadir=/home/guh_clemente/.zcash -conf=/home/guh_clemente/.zcash/zcash.conf -dbcache=6000 -daemon

