#!/usr/bin/env bash

set -x

PYTHON=${PYTHON:-"python"}

VAE_PATH=$1
DATA_NAME=$2
NODES=$3
GPUS=$4

while true # find unused tcp port
do
    PORT=$(( ((RANDOM<<15)|RANDOM) % 49152 + 10000 ))
    status="$(nc -z 127.0.0.1 $PORT < /dev/null &>/dev/null; echo $?)"
    if [ "${status}" != "0" ]; then
        break;
    fi
done
    
$PYTHON -m torch.distributed.launch --nnodes=${NODES} --nproc_per_node=${GPUS} --node_rank=0 --master_addr="xx.xx.xx.xx" --master_port=$PORT \
	 train_atvc.py --vae_path ${VAE_PATH} --image_folder /data/${DATA_NAME}/
