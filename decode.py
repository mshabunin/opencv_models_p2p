#!/usr/bin/env python3

from bcoding import bdecode
import json
import base64

with open("opencv_models.torrent", "rb") as f:
    data = bdecode(f.read())

data["info"]["pieces"] = base64.b85encode(data["info"]["pieces"]).decode("utf-8")

with open("opencv_models.json", "w") as f:
    json.dump(data, f, indent=4)
