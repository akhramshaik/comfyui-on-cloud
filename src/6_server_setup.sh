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
