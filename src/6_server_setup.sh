#!/bin/bash

echo "Current directory: $(pwd)"

comfy_ui_dir="$(pwd)/ComfyUI"
echo "ComfyUI Directory: $comfy_ui_dir"

#Dynamically creating run_the_server.sh
echo "#!/bin/bash" > run_the_server.sh
echo "" >> run_the_server.sh
echo "python main.py --listen" >> run_the_server.sh

# Make the script executable
chmod +x run_the_server.sh
cp run_the_server.sh ComfyUI

echo " "
echo " ---------------- custom run_the_server.sh created "
echo " "



SERVICE_FILE_CONTENT="[Unit]
Description=ComfyUI Server

[Service]
Type=simple
ExecStart=${comfy_ui_dir}/run_the_server.sh



[Install]
WantedBy=multi-user.target"

# Create the systemd service file
echo "$SERVICE_FILE_CONTENT" | sudo tee /etc/systemd/system/comfyui.service > /dev/null

# Reload systemd to recognize the new service
sudo systemctl daemon-reload
sudo systemctl enable comfyui.service
sudo systemctl start comfyui.service

echo " "
echo " ---------------- setup completed "
echo " "
echo -e " ---------------- For health check go to this address $(curl -s httpbin.org/ip | jq -r .origin):8188 in your browser"
