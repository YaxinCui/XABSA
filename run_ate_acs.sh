#!/bin/bash

#!/usr/bin/env bash

mbert_path=./trained-transformers/bert-base-multilingual-cased

nohup python mainate.py --tfm_type mbert \
            --exp_type acs \
            --model_name_or_path $mbert_path \
            --data_dir ./data \
            --src_lang en \
            --tgt_lang es \
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
            --eval_begin_end 1500-2000 \
            --seed 42

nohup python mainate.py --tfm_type mbert \
            --exp_type acs \
            --model_name_or_path $mbert_path \
            --data_dir ./data \
            --src_lang en \
            --tgt_lang fr \
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
            --eval_begin_end 1500-2000 \
            --seed 42


nohup python mainate.py --tfm_type mbert \
            --exp_type acs \
            --model_name_or_path $mbert_path \
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
            --eval_begin_end 1500-2000 \
            --seed 42

nohup python mainate.py --tfm_type mbert \
            --exp_type acs \
            --model_name_or_path $mbert_path \
            --data_dir ./data \
            --src_lang es \
            --tgt_lang fr \
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
            --eval_begin_end 1500-2000 \
            --seed 42

nohup python mainate.py --tfm_type mbert \
            --exp_type acs \
            --model_name_or_path $mbert_path \
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
            --eval_begin_end 1500-2000 \
            --seed 42

nohup python mainate.py --tfm_type mbert \
            --exp_type acs \
            --model_name_or_path $mbert_path \
            --data_dir ./data \
            --src_lang fr \
            --tgt_lang es \
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
            --eval_begin_end 1500-2000 \
            --seed 42

mv outputsate mBERToutputsate_42
mv results_log mBERTresults_log_42