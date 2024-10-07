#!/bin/bash

# make sure you are in comfyui installation folder
mkdir -p ./models/facerestore_models/

#1 - Comfy Manager
git clone https://github.com/ltdrdata/ComfyUI-Manager.git custom_nodes/ComfyUI-Manager
pip install -r custom_nodes/ComfyUI-Manager/requirements.txt