#!/bin/bash

set -ex

transmission-create \
    -o torrent/opencv_models.torrent \
    -t "udp://tracker.opentrackr.org:1337/announce" \
    -t "udp://tracker.openbittorrent.com:6969" \
    -t "udp://tracker.torrent.eu.org:451" \
    -c "OpenCV test models" \
    opencv_models/dnn

python3 decode.py