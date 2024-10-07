#!/bin/bash

USER_NAME=$(whoami)
PYTHON_PATH=$(which python)
COMFYUI_DIR="$(pwd)/ComfyUI"
COMFYUI_RUNNER_PATH="${COMFYUI_DIR}/main.py"

echo "USER_NAME: $USER_NAME"
echo "PYTHON_PATH: $PYTHON_PATH"
echo "COMFYUI_DIR: $COMFYUI_DIR"
echo "COMFYUI_RUNNER_PATH: $COMFYUI_RUNNER_PATH"

#Dynamically Creating run_the_server.sh
echo "#!/bin/bash" > run_the_server.sh
echo "" >> run_the_server.sh
echo "\$PYTHON_PATH \$COMFYUI_RUNNER_PATH --listen" >> run_the_server.sh

# Make The Script Executable
chmod +x run_the_server.sh
cp run_the_server.sh ComfyUI

echo " "
echo " ---------------- Custom run_the_server.sh Created "
echo " "

SERVICE_FILE_CONTENT="[Unit]
Description=ComfyUI Server

[Service]
Type=simple
ExecStart=${comfy_ui_dir}/run_the_server.sh



[Install]
WantedBy=multi-user.target"

# Create The systemd service File
echo "$SERVICE_FILE_CONTENT" | sudo tee /etc/systemd/system/comfyui.service > /dev/null

# Reload systemd to recognize the new service
sudo systemctl daemon-reload
sudo systemctl enable comfyui.service
sudo systemctl start comfyui.service

echo " "
echo " ---------------- setup completed "
echo " "
echo -e " ---------------- For health check go to this address $(curl -s httpbin.org/ip | jq -r .origin):8188 in your browser"
