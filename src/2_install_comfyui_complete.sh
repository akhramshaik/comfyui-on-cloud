#!/bin/bash

echo " "
echo " ---------------- ComfyUI Installing "
echo " "

cp comfyui-on-cloud/src/install_comfyui.sh .
chmod +x ./install_comfyui.sh
./install_comfyui.sh

echo " "
echo " ---------------- ComfyUI Installed "
echo " "



cp comfyui-on-cloud/src/install_extensions.sh ComfyUI
cp comfyui-on-cloud/src/install_checkpoints.sh ComfyUI

echo " "
echo " ---------------- Automation Scripts Copied To ComfyUI Directory "
echo " "

cd ComfyUI

echo " "
echo " ---------------- Extensions Installing."
echo " "

chmod +x ./install_extensions.sh
./install_extensions.sh

echo " "
echo " ---------------- Extensions Installed."
echo " "

echo " "
echo " ---------------- Checkpoints Installing."
echo " "

chmod +x ./install_checkpoints.sh

#./install_checkpoints.sh

echo " "
echo " ---------------- Checkpoints Installed "
echo " "
