#!/bin/bash

set -ex

mkdir -p .container-config

docker build -t opencv_models_p2p container/
docker run -it \
    --user $(id -u):$(id -g) \
    --volume $(pwd)/opencv_models:/opencv_models \
    --volume $(pwd)/torrent:/torrent:ro \
    --volume $(pwd)/.container-config:/config \
    -e HOME=/config \
    opencv_models_p2p \
    transmission-cli \
        -w /opencv_models \
        -g /config \
        --verify \
        /torrent/opencv_models.torrent