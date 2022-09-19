#!/bin/sh
#SBACTH --job-name=“Dataset0_Leaky_norm_multi_new”
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --gres=gpu:1
#SBATCH --constraint=A100
#SBATCH --time=0-18:00
#SBATCH --mem=160gb
#SBATCH --partition=short
#SBATCH --mail-user=gmalabanti@wpi.edu
#SBATCH --mail-type=ALL
#SBATCH --output='/work/shared/DEVCOM-SC21/Network/code/new_data_code/Dataset0_Leaky_norm_multi_new.out'
eval "$(conda shell.bash hook)"
conda activate deepLearning
srun python run_code.py