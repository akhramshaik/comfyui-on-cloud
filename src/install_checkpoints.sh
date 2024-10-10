#!/bin/bash

mkdir -p ./models/clip/
mkdir -p ./models/clip_vision/
mkdir -p ./models/ipadapter/
mkdir -p ./models/upscale_models/

#Checkpoint Models:
cd /home/Welcome/ComfyUI/models/checkpoints
wget https://huggingface.co/SG161222/Realistic_Vision_V3.0_VAE/resolve/main/Realistic_Vision_V3.0.safetensors --output-document=Realistic_Vision_V3_SD15.safetensors
wget https://huggingface.co/Comfy-Org/flux1-dev/resolve/main/flux1-dev-fp8.safetensors --output-document=Flux1DevFP8.safetensors
wget https://huggingface.co/SG161222/RealVisXL_V5.0/resolve/main/RealVisXL_V5.0_fp16.safetensors --output-document=RealVisXL_V5_FP16.safetensors
wget https://huggingface.co/SG161222/RealVisXL_V5.0_Lightning/resolve/main/RealVisXL_V5.0_Lightning_fp16.safetensors --output-document=RealVisXL_V5_FP16_Lightning.safetensors
wget https://civitai.com/api/download/models/646523 --output-document=epiCRealismXL_FP16.safetensors

#LoRAs:
cd /home/Welcome/ComfyUI/models/loras
wget https://huggingface.co/comfyanonymous/flux_RealismLora_converted_comfyui/resolve/main/flux_realism_lora.safetensors --output-document=FluxRealismLoRA.safetensors
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid_sd15_lora.safetensors --output-document=ip-adapter-faceid_sd15_lora.safetensors
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plusv2_sd15_lora.safetensors --output-document=ip-adapter-faceid-plusv2_sd15_lora.safetensors
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid_sdxl_lora.safetensors --output-document=ip-adapter-faceid_sdxl_lora.safetensors
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plusv2_sdxl_lora.safetensors --output-document=ip-adapter-faceid-plusv2_sdxl_lora.safetensors

#Clip Vision:
cd /home/Welcome/ComfyUI/models/clip_vision
wget https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/image_encoder/model.safetensors --output-document=SDXL_CLIP-ViT-bigG-14-laion2B-39B-b160k.safetensors 
wget https://huggingface.co/h94/IP-Adapter/resolve/main/models/image_encoder/model.safetensors --output-document=SD15_CLIP-ViT-H-14-laion2B-s32B-b79K.safetensors

#IPAdapter Models:
cd /home/Welcome/ComfyUI/models/ipadapter/
wget https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter_sd15.safetensors --output-document=ip-adapter_sd15.safetensors
wget https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter_sd15_light_v11.bin --output-document=ip-adapter_sd15_light_v11.bin
wget https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter-plus_sd15.safetensors --output-document=ip-adapter-plus_sd15.safetensors
wget https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter-plus-face_sd15.safetensors --output-document=ip-adapter-plus-face_sd15.safetensors
wget https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter-full-face_sd15.safetensors --output-document=ip-adapter-full-face_sd15.safetensors
wget https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter_sd15_vit-G.safetensors --output-document=ip-adapter_sd15_vit-G.safetensors
wget https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter_sdxl_vit-h.safetensors --output-document=ip-adapter_sdxl_vit-h.safetensors
wget https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter-plus_sdxl_vit-h.safetensors --output-document=ip-adapter-plus_sdxl_vit-h.safetensors
wget https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter-plus-face_sdxl_vit-h.safetensors --output-document=ip-adapter-plus-face_sdxl_vit-h.safetensors
wget https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter_sdxl.safetensors --output-document=ip-adapter_sdxl.safetensors
wget https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter_sd15_light.safetensors --output-document=ip-adapter_sd15_light.safetensors
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid_sd15.bin --output-document=ip-adapter-faceid_sd15.bin
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plusv2_sd15.bin --output-document=ip-adapter-faceid-plusv2_sd15.bin
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-portrait-v11_sd15.bin --output-document=ip-adapter-faceid-portrait-v11_sd15.bin
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid_sdxl.bin --output-document=ip-adapter-faceid_sdxl.bin
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plusv2_sdxl.bin --output-document=ip-adapter-faceid-plusv2_sdxl.bin
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-portrait_sdxl.bin --output-document=ip-adapter-faceid-portrait_sdxl.bin
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-portrait_sdxl_unnorm.bin --output-document=ip-adapter-faceid-portrait_sdxl_unnorm.bin
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plus_sd15.bin --output-document=ip-adapter-faceid-plus_sd15.bin
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-portrait_sd15.bin --output-document=ip-adapter-faceid-portrait_sd15.bin
wget https://huggingface.co/ostris/ip-composition-adapter/resolve/main/ip_plus_composition_sd15.safetensors --output-document=ip_plus_composition_sd15.safetensors
wget https://huggingface.co/ostris/ip-composition-adapter/resolve/main/ip_plus_composition_sdxl.safetensors --output-document=ip_plus_composition_sdxl.safetensors


#ControlNet SDXL
cd /home/Welcome/ComfyUI/models/controlnet
wget https://huggingface.co/xinsir/controlnet-union-sdxl-1.0/resolve/main/diffusion_pytorch_model_promax.safetensors --output-document=UnionSDXL1_0.safetensors


# ControlNets SD 1.5
#- Depth
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11f1p_sd15_depth_fp16.safetensors -P ./models/controlnet/
#- Normal Maps
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_normalbae_fp16.safetensors -P ./models/controlnet/
#- Canny Maps
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_canny_fp16.safetensors -P ./models/controlnet/
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_mlsd_fp16.safetensors -P ./models/controlnet/
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_scribble_fp16.safetensors -P ./models/controlnet/
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_softedge_fp16.safetensors -P ./models/controlnet/
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_openpose_fp16.safetensors -P ./models/controlnet/
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_lineart_fp16.safetensors -P ./models/controlnet/
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15s2_lineart_anime_fp16.safetensors -P ./models/controlnet/
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11e_sd15_shuffle_fp16.safetensors -P ./models/controlnet/
#- Inpainting
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_inpaint_fp16.safetensors -P ./models/controlnet/
# - Tile
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11u_sd15_tile_fp16.safetensors -P ./models/controlnet/
#- Inpainting to Painting
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11e_sd15_ip2p_fp16.safetensors -P ./models/controlnet/
#- Segmentation
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_seg_fp16.safetensors -P ./models/controlnet/









# # clip_vision
# wget https://huggingface.co/h94/IP-Adapter/resolve/main/models/image_encoder/model.safetensors -P ./models/clip_vision/



# #LORAS
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid_sd15_lora.safetensors --output-document=ip-adapter-faceid_sd15_lora.safetensors
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plusv2_sd15_lora.safetensors --output-document=ip-adapter-faceid-plusv2_sd15_lora.safetensors
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid_sdxl_lora.safetensors --output-document=ip-adapter-faceid_sdxl_lora.safetensors
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plusv2_sdxl_lora.safetensors --output-document=ip-adapter-faceid-plusv2_sdxl_lora.safetensors

# #UPSCALE_METHODS
