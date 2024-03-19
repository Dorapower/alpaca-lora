#!/usr/bin/env bash

cd /export/home/personal/luobaojia1/PycharmProjects/alpaca-lora || exit

torchrun \
    --standalone \
    --nnodes 1 \
    --nproc-per-node 7 \
    finetune.py \
    --base_model './models/llama-7b-hf' \
    --data_path './datasets/alpaca_data_cleaned.json' \
    --prompt_template_name 'alpaca' \
    --output_dir './lora-models/lora-alpaca-qa' \
    --batch_size 512 \
    --micro_batch_size 32 \
    --num_epochs 3
