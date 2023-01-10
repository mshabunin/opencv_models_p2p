#!/usr/bin/env python3

from bcoding import bencode
import json
import base64


with open("opencv_models.json", "rb") as f:
    data = json.load(f)

data["info"]["pieces"] = base64.b85decode(data["info"]["pieces"])

with open("opencv_models.torrent", "wb") as f:
    f.write(bencode(data))
