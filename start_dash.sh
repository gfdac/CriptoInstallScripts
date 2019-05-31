#!/usr/bin/env bash
echo "Dash at work!"
screen -dmS dash sudo /opt/dash/src/dashd -datadir=/home/guh_clemente/.dashcore -conf=/home/guh_clemente/.dashcore/dash.conf -dbcache=6000 -daemon

