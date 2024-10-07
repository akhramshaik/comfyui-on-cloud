# ComfyUI on Cloud

The main goal of this repository is to provide a quick and easy method for individuals interested in stable diffusion to set up their own comfyUI server application with GPU support. This application can be accessed from any device capable of running a browser, including ARM-based Macs, iPads, and even smartphones, without concerns about performance, speed, or privacy issues.



## Required Software (Windows Only)
1. Download and Install the gcloud CLI from https://cloud.google.com/sdk/docs/install
2. Download and Install Git from https://git-scm.com/downloads
3. Download and Install Putty Package files from https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html


## How to Setup?
    ```bash
        git clone https://github.com/akhramshaik/comfyui-on-cloud.git
        chmod +x ./comfyui-on-cloud/src/1_vm_setup.sh
        chmod +x ./comfyui-on-cloud/src/2_install_comfyui_complete.sh

        ./comfyui-on-cloud/src/1_vm_setup.sh

        source ~/.bashrc
        ./comfyui-on-cloud/src/2_install_comfyui_complete.sh

        cp comfyui-on-cloud/src/3_service_setup.sh .
        chmod +x ./3_service_setup.sh
        ./3_service_setup.sh
    ```


## How to Use?

1. Connecting to SSH.

   ```bash
        gcloud compute ssh comfyui-name --zone asia-south1-a
    ```

2. Stop the Server.

   ```bash
        gcloud compute instances stop comfyui-name --zone asia-south1-a
    ```

3. Start the Server.

    ```bash
        gcloud compute instances start comfyui-name --zone asia-south1-a
    ```
---

##  How can I download new models?
- Option 1: You can use ComfyUI Manager to download them. Just open the Manager and click
```install models```
- Option 2: Find a model you like in CivitAI. When you are in the model page, check your link and find the model id number. 
Civitai links looks like this:

   ```https://civitai.com/models/139562/realvisxl-v40```

   here ```139562``` is the model id we need. modify the code line below with modelid number you want 

   ```wget https://civitai.com/api/download/models/134084 --content-disposition -P ./models/checkpoints/``` 

   Now, all you need to do is login to your server and then enter your ComfyUI folder with ```cd ComfyUI``` and paste the line above. 
   Once installation finished you can use reboot your server and you can use the model. 
   And some models requires login. And to download them, follow instructions in this link :

   https://education.civitai.com/civitais-guide-to-downloading-via-api/

