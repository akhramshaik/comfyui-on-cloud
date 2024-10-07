# ComfyUI on Cloud

The main goal of this repository is to provide a quick and easy method for individuals interested in stable diffusion to set up their own comfyUI server application with GPU support. This application can be accessed from any device capable of running a browser, including ARM-based Macs, iPads, and even smartphones, without concerns about performance, speed, or privacy issues.



## How to Install? (Takes only 15 mins!) <a name="installation"></a>

1. Create a GCP compute engine instance(VM) and Install the google CLI on your local machine(***details below***).
2. Log in to your VM and execute the following commands:

    ```bash
        git clone https://github.com/karaposu/comfyui-on-cloud

        chmod +x ./comfyui-on-cloud/src/1_vm_setup.sh
        chmod +x ./comfyui-on-cloud/src/2_install_comfyui_complete.sh
        cp comfyui-on-cloud/src/3_service_setup.sh .
        chmod +x ./3_service_setup.sh



        ./comfyui-on-cloud/src/1_vm_setup.sh

        source ~/.bashrc
        ./comfyui-on-cloud/src/2_install_comfyui_complete.sh


        source ~/.bashrc 
        ./3_service_setup.sh
    ```

    This will set up comfyUI, install popular extensions and model checkpoints, and include an automation script that automatically starts the comfyvm server whenever the VM is booted.


## How to Use?<a name="usage"></a>


1. To start comfyUI server, open your terminal in your local machine and run the command below.

   ```bash
    gcloud compute instances start comfyvm
    ```
   (Or if you are on your ipad, go to https://console.cloud.google.com/compute/instances and click start)

    Now you can access comfyUI through any browser by browsing:
[http://[external-ip-of-your-vm]:8188 ](http://[external-ip-of-your-vm]:8188 )
   
2. To shut down the server and avoid unnecessary CPU and GPU usage costs during idle times, run:

    ```bash
    gcloud compute instances stop comfyvm
    ```
---

##  How can I download new models? <a name="new_models"></a>  
- Option 1: You can use ComfyUI Nanager to download them. Just open the Manager and click
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



## Detailed Tutorial   <a name="instructions_details"></a>


### 2.Setting up ComfyUI Server

1. Log in to the VM:

    ```bash
    gcloud compute ssh comfyvm --zone europe-central2-b
    
    ```

##  TroubleShooting  <a name="troubleshooting"></a>

### if you want to stop starting at reboot feature :
```bash

sudo systemctl disable comfyui.service
```

### if you want to stop the service for that moment :
```bash
sudo systemctl stop comfyui.service
```


