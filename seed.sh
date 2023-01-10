#!/bin/bash

set -ex

transmission-cli \
    --verify \
    -w opencv_models \
    opencv_models.torrent
