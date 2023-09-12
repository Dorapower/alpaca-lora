#!/usr/bin/env bash

cd /export/home/personal/luobaojia1/PycharmProjects/alpaca-lora || exit

python finetune.py \
    --base_model './models/llama-7b-hf' \
    --data_path './datasets/refined.jsonl' \
    --prompt_template_name 'refiner' \
    --output_dir './models/lora-alpaca' \
    --batch_size 256 \
    --micro_batch_size 16 \
    --num_epochs 5