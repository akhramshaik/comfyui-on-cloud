# ComfyUI on Cloud

The main goal of this repository is to provide a quick and easy method for individuals interested in stable diffusion to set up their own comfyUI server application with GPU support. This application can be accessed from any device capable of running a browser, including ARM-based Macs, iPads, and even smartphones, without concerns about performance, speed, or privacy issues.


## Required Software (Windows Only)
1. Download and Install the gcloud CLI from https://cloud.google.com/sdk/docs/install
2. Download and Install Git from https://git-scm.com/downloads
3. Download and Install Putty Package files from https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html
4. Install PortX from https://portx.online/en/download/


## How to Setup?

    ```
        git clone https://github.com/akhramshaik/comfyui-on-cloud.git
        chmod +x ./comfyui-on-cloud/src/1_vm_setup.sh
        chmod +x ./comfyui-on-cloud/src/2_install_comfyui_complete.sh

        ./comfyui-on-cloud/src/1_vm_setup.sh

        source ~/.bashrc
        ./comfyui-on-cloud/src/2_install_comfyui_complete.sh
        
        source ~/.bashrc
        cp comfyui-on-cloud/src/3_service_setup.sh .
        chmod +x ./3_service_setup.sh
        ./3_service_setup.sh
        
        source ~/.bashrc
        sudo ./install_checkpoints.sh
    ```


## How to Use?

1. To Stop the Server ``` gcloud compute instances stop vm-name --zone asia-south1-a ```

2. To Start the Server ``` gcloud compute instances start vm-name --zone asia-south1-a ```
---

##  How can I download new models?
1. Connect to Portx
2. Select the SSH (Red Icon)
3. Next, type this to go to the Models Folder
   ``` cd /home/Welcome/ComfyUI/models ```
4. Follow the instructions in the video to prepare your download URL.
5. Next, go to the Checkpoint or LoRA folder based on your requirement and paste your download URL
   ``` sudo wget https://civitai.com/api/download/models/916744 --output-document=ZavyChromaXL.safetensors ```

