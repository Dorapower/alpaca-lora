#!/usr/bin/env bash

cd /export/home/personal/luobaojia1/PycharmProjects/alpaca-lora || exit

torchrun \
    --standalone \
    --nnodes 1 \
    --nproc-per-node 8 \
    finetune.py \
    --base_model './models/llama-7b-hf' \
    --data_path './datasets/alpaca.jsonl' \
    --prompt_template_name 'refiner' \
    --output_dir './lora-models/lora-alpaca-again' \
    --batch_size 256 \
    --micro_batch_size 16 \
    --num_epochs 5
