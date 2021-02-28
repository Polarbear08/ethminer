#!/bin/bash -x

SCRIPT_PATH=$HOME/ethminer
CONTAINER_NAME=miner
LOG_FILE=$SCRIPT_PATH/miner_error.log

function restart_miner() {
    sudo docker stop miner && sudo docker rm miner && sudo bash $SCRIPT_PATH/miner.sh
    echo "$CONTAINER_NAME was restarted" >> $LOG_FILE
}

if [ `sudo docker ps --quiet --filter "name=$CONTAINER_NAME" | wc -l` -eq 0 ]; then
    # restart miner if it is not present
    restart_miner
    echo "container has been stopped with some reason" >> $LOG_FILE
elif [ `sudo docker logs miner | grep -i SIGSEGV | wc -l` -gt 0 ]; then
    # restart miner if it has encountered SIGSEGV
    restart_miner
    echo "SIGSEGV was observed. maybe it had disconnected with server" >> $LOG_FILE
fi