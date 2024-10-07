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

#7 - ComfyUI To Python Code
git clone https://github.com/pydn/ComfyUI-to-Python-Extension.git custom_nodes/ComfyUI-to-Python-Extension
pip install -r custom_nodes/ComfyUI-to-Python-Extension/requirements.txt

#8 - ComfyUI WD 1.4 Tagger
git clone https://github.com/pythongosssss/ComfyUI-WD14-Tagger.git custom_nodes/ComfyUI-WD14-Tagger
pip install -r custom_nodes/ComfyUI-WD14-Tagger/requirements.txt

#9 - ComfyUI-Custom-Scripts
git clone https://github.com/pythongosssss/ComfyUI-Custom-Scripts.git custom_nodes/ComfyUI-Custom-Scripts


#10 - ReActorFaceSwap
git clone https://github.com/Gourieff/comfyui-reactor-node custom_nodes/comfyui-reactor-node
python custom_nodes/comfyui-reactor-node/install.py
wget -P ~/models/facerestore_models https://github.com/sczhou/CodeFormer/releases/download/v0.1.0/codeformer.pth
wget -P ~/models/facerestore_models https://github.com/TencentARC/GFPGAN/releases/download/v1.3.4/GFPGANv1.4.pth

#11 - Impact-Pack
git clone https://github.com/ltdrdata/ComfyUI-Impact-Pack custom_nodes/ComfyUI-Impact-Pack
python custom_nodes/ComfyUI-Impact-Pack/install.py


#sdxl_prompt_styler
# git clone https://github.com/twri/sdxl_prompt_styler custom_nodes/sdxl_prompt_styler


# git clone https://github.com/mav-rik/facerestore_cf custom_nodes/facerestore_cf
# wget https://github.com/TencentARC/GFPGAN/releases/download/v1.3.4/GFPGANv1.4.pth -P ./models/facerestore_models/
# wget https://github.com/sczhou/CodeFormer/releases/download/v0.1.0/codeformer.pth -P ./models/facerestore_models/