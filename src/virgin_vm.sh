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
echo -e "import torch\nprint(torch.cuda.is_available())\nprint(torch.cuda.get_device_name(0))" > test_cuda.py
python test_cuda.py

## run these lines in the vm to make sure port 8188 is open for external access
#sudo ufw allow 8188/tcp
#sudo ufw reload
#sudo firewall-cmd --zone=public --add-port=8188/tcp --permanent
#sudo firewall-cmd --reload
#sudo apt-get install iptables
#sudo iptables -A INPUT -p tcp --dport 8188 -j ACCEPT
