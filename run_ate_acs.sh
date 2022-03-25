#!/bin/bash

#!/usr/bin/env bash

mbert_path=./trained-transformers/bert-base-multilingual-cased
xlmr_path=./trained-transformers/xlm-roberta-base

python mainate.py --tfm_type xlmr \
            --exp_type acs \
            --model_name_or_path $xlmr_path \
            --data_dir ./data \
            --src_lang es \
            --tgt_lang en \
            --do_train \
            --do_eval \
            --ignore_cached_data \
            --per_gpu_train_batch_size 16 \
            --per_gpu_eval_batch_size 12 \
            --learning_rate 5e-5 \
            --tagging_schema BIEOS \
            --overwrite_output_dir \
            --max_steps 2000 \
            --train_begin_saving_step 1500 \
            --eval_begin_end 1500-2000

python mainate.py --tfm_type xlmr \
            --exp_type acs \
            --model_name_or_path $xlmr_path \
            --data_dir ./data \
            --src_lang fr \
            --tgt_lang en \
            --do_train \
            --do_eval \
            --ignore_cached_data \
            --per_gpu_train_batch_size 16 \
            --per_gpu_eval_batch_size 12 \
            --learning_rate 5e-5 \
            --tagging_schema BIEOS \
            --overwrite_output_dir \
            --max_steps 2000 \
            --train_begin_saving_step 1500 \
            --eval_begin_end 1500-2000
