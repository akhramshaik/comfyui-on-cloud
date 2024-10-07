#!/bin/bash

sudo apt-get update
sudo apt-get --assume-yes upgrade
sudo apt-get --assume-yes install software-properties-common
sudo apt-get --assume-yes install jq
sudo apt-get --assume-yes install build-essential
sudo apt-get --assume-yes install linux-headers-$(uname -r)

source .bashrc

# confirm GPU is attached
lspci | grep -i nvidia

# confirm GPU not recognized
nvidia-smi

source .bashrc
source .bashrc

pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu118
pip install onnxruntime onnxruntime-gpu insightface

echo -e "import torch\nprint(torch.cuda.is_available())\nprint(torch.cuda.get_device_name(0))" > test_cuda.py
python test_cuda.py