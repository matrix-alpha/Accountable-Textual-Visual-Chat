#!/usr/bin/env bash

set -x

PYTHON=${PYTHON:-"python"}

GPU=$1
ATVC_PATH=$2
TEXT_QUERY=$3
IMAGE_PATH=$4

CUDA_VISIBLE_DEVICES=${GPU} PYTHON -m torch.distributed.launch --nproc_per_node=1 \
                       /atvc/gen_atvc.py --atvc_path ${ATVC_PATH} --text ${TEXT_QUERY} --source_image ${IMAGE_PATH}
