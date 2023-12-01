#!/bin/bash

set -exu

python3 ${OPENCV_TEST_DATA_PATH}/dnn/download_models.py \
    --cleanup \
    --dst opencv_models/dnn
