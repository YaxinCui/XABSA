#!/usr/bin/env bash

mbert_path=./trained-transformers/bert-base-multilingual-cased
xlmr_path=./trained-transformers/xlm-roberta-base

python mainate.py --tfm_type xlmr \
            --exp_type acs_kd_m \
            --model_name_or_path $xlmr_path \
            --data_dir ./data \
            --src_lang en \
            --tgt_lang es \
            --do_distill \
            --do_eval \
            --ignore_cached_data \
            --student_model_path ./outputsate/xlmr-en-es-acs/checkpoint-1800 \
            --trained_teacher_paths ./outputsate/xlmr-en-es-acs/checkpoint-1800 \
            --per_gpu_train_batch_size 16 \
            --per_gpu_eval_batch_size 32 \
            --learning_rate 5e-5 \
            --tagging_schema BIEOS \
            --overwrite_output_dir \
            --max_steps 1000 \
            --train_begin_saving_step 500 \
            --eval_begin_end 500-1000 

"""
python mainate.py --tfm_type xlmr \
            --exp_type acs_kd_s \
            --model_name_or_path $xlmr_path \
            --data_dir ./data \
            --src_lang en \
            --tgt_lang nl \
            --do_distill \
            --do_eval \
            --ignore_cached_data \
            --student_model_path ./outputsate/xlmr-en-nl-acs/checkpoint-1700 \
            --trained_teacher_paths ./outputsate/xlmr-en-nl-acs/checkpoint-1700 \
            --per_gpu_train_batch_size 16 \
            --per_gpu_eval_batch_size 32 \
            --learning_rate 5e-5 \
            --tagging_schema BIEOS \
            --overwrite_output_dir \
            --max_steps 1000 \
            --train_begin_saving_step 500 \
            --eval_begin_end 500-1000 

python mainate.py --tfm_type xlmr \
            --exp_type acs_kd_s \
            --model_name_or_path $xlmr_path \
            --data_dir ./data \
            --src_lang en \
            --tgt_lang ru \
            --do_distill \
            --do_eval \
            --ignore_cached_data \
            --student_model_path ./outputsate/xlmr-en-ru-acs/checkpoint-1800 \
            --trained_teacher_paths ./outputsate/xlmr-en-ru-acs/checkpoint-1800 \
            --per_gpu_train_batch_size 16 \
            --per_gpu_eval_batch_size 32 \
            --learning_rate 5e-5 \
            --tagging_schema BIEOS \
            --overwrite_output_dir \
            --max_steps 1000 \
            --train_begin_saving_step 500 \
            --eval_begin_end 500-1000
            
"""