export PYTHONPATH=/n/fs/not-fmrl/Projects/ActivePerception-FMRL/VAD-VLM
export LD_LIBRARY_PATH="$CONDA_PREFIX/lib:$LD_LIBRARY_PATH"
export WANDB_DIR=/n/fs/not-fmrl/Projects/ActivePerception-FMRL/VAD-VLM/outputs

# export Torch hub home directory
export TORCH_HOME=/n/fs/not-fmrl/languageModels

cd /n/fs/not-fmrl/Projects/ActivePerception-FMRL/VAD-VLM

CUDA_VISIBLE_DEVICES=0 python tools/test.py projects/configs/VAD/VAD_tiny_e2e_small_p1_p2.py \
    /n/fs/not-fmrl/Projects/ActivePerception-FMRL/VAD-VLM/outputs/VAD_tiny_e2e_small_p1_p2/epoch_10.pth \
    --launcher none --eval bbox --tmpdir tmp