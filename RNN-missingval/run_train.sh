#!/bin/bash
#
#SBATCH --job-name=train
##SBATCH --gres=gpu:v100:1
##SBATCH --gres=gpu:p40:1
##SBATCH --gres=gpu:v100:1
#SBATCH --gres=gpu:1
##SBATCH --cpus-per-task=5
#SBATCH --time=20:00:00
#SBATCH --mem=100GB
#SBATCH --output=outputs/train_%A.out
#SBATCH --error=outputs/train_%A.err


module purge
module load python3/intel/3.5.3
module load pytorch/python3.5/0.2.0_3
module load torchvision/python3.5/0.1.9


python3 -u /scratch/sb3923/time_series/EarlySepsisPrediction/RNN-missingval/train.py
