#!/bin/bash

echo " "
echo " ---------------- ComfyUI Installing "
echo " "

cp comfyui-on-cloud/src/3_install_comfyui.sh .

chmod +x ./3_install_comfyui.sh

./3_install_comfyui.sh

echo " "
echo " ---------------- ComfyUI Installed "
echo " "





cp comfyui-on-cloud/src/4_install_extensions.sh ComfyUI
cp comfyui-on-cloud/src/5_install_checkpoints.sh ComfyUI

echo " "
echo " ---------------- Automation Scripts Copied To ComfyUI Directory "
echo " "






cd ComfyUI

echo " "
echo " ---------------- Extensions Installing."
echo " "

chmod +x ./4_install_extensions.sh

./4_install_extensions.sh

echo " "
echo " ---------------- Extensions Installed."
echo " "




echo " "
echo " ---------------- Checkpoints Installing."
echo " "

chmod +x ./5_install_checkpoints.sh

./5_install_checkpoints.sh

echo " "
echo " ---------------- Checkpoints Installed "
echo " "