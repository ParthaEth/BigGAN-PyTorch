#!/bin/bash
ARG=$1
#source /is/ps2/pghosh/.virtualenvs/gif/bin/activate

###################################### BigGANDeep ###############################################
#/is/cluster/work/pghosh/.venv/invgan_cuda_11/bin/python train.py \
#--model BigGANdeep \
#--dataset I128_hdf5 --parallel --shuffle  --num_workers 8 --batch_size 256 \
#--num_G_accumulations 8 --num_D_accumulations 8 \
#--num_D_steps 1 --G_lr 1e-4 --D_lr 4e-4 --D_B2 0.999 --G_B2 0.999 \
#--G_attn 64 --D_attn 64 \
#--G_ch 128 --D_ch 128 \
#--G_depth 2 --D_depth 2 \
#--G_nl inplace_relu --D_nl inplace_relu \
#--SN_eps 1e-6 --BN_eps 1e-5 --adam_eps 1e-6 \
#--G_ortho 0.0 \
#--G_shared \
#--G_init ortho --D_init ortho \
#--hier --dim_z 128 --shared_dim 128 \
#--ema --use_ema --ema_start 20000 --G_eval_mode \
#--test_every 2000 --save_every 500 --num_best_copies 5 --num_save_copies 2 --seed 0 \
#--use_multiepoch_sampler \
#--data_root '../../inv_gan_data/imagenet_data' \
#--load_in_mem
##################################################################################################
echo "Running BigGAN normal"
/is/cluster/work/pghosh/.venv/invgan_cuda_11/bin/python train.py \
--dataset I128_hdf5 --parallel --shuffle  --num_workers 8 --batch_size 256 --load_in_mem  \
--num_G_accumulations 8 --num_D_accumulations 8 \
--num_D_steps 1 --G_lr 1e-4 --D_lr 4e-4 --D_B2 0.999 --G_B2 0.999 \
--G_attn 64 --D_attn 64 \
--G_nl inplace_relu --D_nl inplace_relu \
--SN_eps 1e-6 --BN_eps 1e-5 --adam_eps 1e-6 \
--G_ortho 0.0 \
--G_shared \
--G_init ortho --D_init ortho \
--hier --dim_z 120 --shared_dim 128 \
--G_eval_mode \
--G_ch 96 --D_ch 96 \
--ema --use_ema --ema_start 20000 \
--test_every 2000 --save_every 1000 --num_best_copies 5 --num_save_copies 2 --seed 0 \
--use_multiepoch_sampler \
--data_root '../../inv_gan_data/imagenet_data' \