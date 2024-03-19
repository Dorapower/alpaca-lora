#!/usr/bin/env bash

cd /export/home/personal/luobaojia1/PycharmProjects/alpaca-lora || exit

BASE_MODEL=./models/llama-7b-hf
LORA_MODEL=./lora-models/lora-alpac-qa
HF_MODEL=./models/lora-alpaca-qa

python export_hf_checkpoint.py