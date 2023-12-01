#!/bin/bash

set -ex

transmission-cli \
    --verify \
    -w opencv_models \
    torrent/opencv_models.torrent
