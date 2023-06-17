#!/usr/bin/env bash

set -x

PYTHON=${PYTHON:-"python"}

GPU=$1
VAE_PATH=$2
IMAGE_PATH=$2

CUDA_VISIBLE_DEVICES=${GPU} PYTHON -m torch.distributed.launch --nproc_per_node=1 \
                       /atvc/gen_vae.py --vae_path ${VAE_PATH} --source_image ${IMAGE_PATH}
