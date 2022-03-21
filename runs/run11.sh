#!/bin/bash
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16 
#SBATCH --time=1:00:00
#SBATCH --mem=40GB
#SBATCH --gres=gpu:1
#SBATCH --job-name=ResNet18_dadn1_drop0.5
#SBATCH --output=ResNet18_dadn1_drop0.5.out

module load python/intel/3.8.6
module load openmpi/intel/4.0.5

source ../venvs/dl/bin/activate
time python3 main.py  --config resnet_configs/sunday_ResNets.yaml --resnet_architecture ResNet18_dadn1_drop0.5