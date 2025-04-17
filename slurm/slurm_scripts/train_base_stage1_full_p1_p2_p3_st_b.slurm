#!/bin/bash
#SBATCH --job-name=BASE                   # create a short name for your job
#SBATCH --nodes=1                           # node count
#SBATCH --ntasks=4                          # total number of tasks across all nodes
#SBATCH --cpus-per-task=4                   # cpu-cores per task
#SBATCH --mem-per-cpu=24G                   # memory per cpu-core
#SBATCH --gres=gpu:8                        # number of gpus per node
#SBATCH --time=6-23:00:00                     # total run time limit (HH:MM:SS)
#SBATCH --mail-type=fail                                 # send email notifications
#SBATCH --mail-user=zm2074@princeton.edu                 # email for notifications
#SBATCH --output=slurm_outputs/%x/out_log_%x_%j.out      # Output File


source /n/fs/not-fmrl/anaconda3/etc/profile.d/conda.sh
conda activate vad

cd /n/fs/vlm-driving/VAD-VLM/slurm/bash_scripts
./train_base_stage1_full_p1_p2_p3_st_b.sh
