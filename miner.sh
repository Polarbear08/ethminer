docker run -dit \
    --restart=always \
    --name miner \
    --runtime=nvidia \
    -e NVIDIA_VISIBLE_DEVICES=all \
    polarbear08/ethminer:nvidia-cuda \
        -P stratum2+tcp://YOUR_WALLET_ADDRESS.WORKER@daggerhashimoto.eu-west.nicehash.com:3353