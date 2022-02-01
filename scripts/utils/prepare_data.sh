#!/bin/bash
python make_hdf5.py --dataset I128 --batch_size 256 --data_root '/is/cluster/work/pghosh/datasets/imagenet_2012/ILSVRC/Data/CLS-LOC'
python calculate_inception_moments.py --dataset I128_hdf5 --data_root '/is/cluster/work/pghosh/datasets/imagenet_2012/ILSVRC/Data/CLS-LOC'