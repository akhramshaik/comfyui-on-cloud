#!/bin/bash

# make sure you are in comfyui installation folder
mkdir -p ./models/facerestore_models/

#1 - Comfy Manager
git clone https://github.com/ltdrdata/ComfyUI-Manager.git custom_nodes/ComfyUI-Manager
pip install -r custom_nodes/ComfyUI-Manager/requirements.txt

#2 - ComfyUI Workspace Manager
git clone https://github.com/11cafe/comfyui-workspace-manager.git custom_nodes/comfyui-workspace-manager

#3 - ControlNet Auxiliary Preprocessors
git clone https://github.com/Fannovel16/comfyui_controlnet_aux custom_nodes/comfyui_controlnet_aux
pip install -r custom_nodes/comfyui_controlnet_aux/requirements.txt

#4 - ComfyUI IPAdapter Plus
git clone https://github.com/cubiq/ComfyUI_IPAdapter_plus custom_nodes/ComfyUI_IPAdapter_plus

#5 - WAS Node Suite
git clone https://github.com/WASasquatch/was-node-suite-comfyui custom_nodes/was-node-suite-comfyui
pip install -r custom_nodes/was-node-suite-comfyui/requirements.txt

#6 - WAS Extra Nodes
git clone https://github.com/WASasquatch/WAS_Extras custom_nodes/WAS_Extras
python custom_nodes/WAS_Extras/install.py

# reactor
git clone https://github.com/Gourieff/comfyui-reactor-node custom_nodes/comfyui-reactor-node
python custom_nodes/comfyui-reactor-node/install.py
wget -P ~/models/facerestore_models https://github.com/sczhou/CodeFormer/releases/download/v0.1.0/codeformer.pth
wget -P ~/models/facerestore_models https://github.com/TencentARC/GFPGAN/releases/download/v1.3.4/GFPGANv1.4.pth

#sdxl_prompt_styler
git clone https://github.com/twri/sdxl_prompt_styler custom_nodes/sdxl_prompt_styler

# Impact-Pack
git clone https://github.com/ltdrdata/ComfyUI-Impact-Pack custom_nodes/ComfyUI-Impact-Pack
python custom_nodes/ComfyUI-Impact-Pack/install.py


git clone https://github.com/mav-rik/facerestore_cf custom_nodes/facerestore_cf
wget https://github.com/TencentARC/GFPGAN/releases/download/v1.3.4/GFPGANv1.4.pth -P ./models/facerestore_models/
wget https://github.com/sczhou/CodeFormer/releases/download/v0.1.0/codeformer.pth -P ./models/facerestore_models/

#ComfyUI To Python Code
git clone https://github.com/pydn/ComfyUI-to-Python-Extension.git
pip install -r ComfyUI-to-Python-Extension/requirements.txt
