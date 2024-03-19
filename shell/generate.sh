#!/usr/bin/env bash

cd /export/home/personal/luobaojia1/PycharmProjects/alpaca-lora || exit

CUDA_VISIBLE_DEVICES=0 TRANSFORMERS_OFFLINE=1 python generate.py \
    --load_8bit \
    --base_model "/export/home/personal/luobaojia1/Models/huggingface/meta-llama/Llama-2-7b-hf/" \
    --lora_weights "./lora-models/lora-alpaca-again" \
    --prompt_template "refiner"
