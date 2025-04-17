# source /n/fs/pci-sharedt/bl6948/miniconda3/etc/profile.d/conda.sh
# conda activate /n/fs/pci-sharedt/bl6948/miniconda3/vad
export PYTHONPATH=/n/fs/vlm-driving/VAD-VLM
export LD_LIBRARY_PATH="$CONDA_PREFIX/lib:$LD_LIBRARY_PATH"
export WANDB_DIR=/n/fs/vlm-driving/VAD-VLM/outputs


# export Torch hub home directory
export TORCH_HOME=/n/fs/not-fmrl/languageModels

# python /n/fs/vlm-driving/VAD-VLM/tools/train.py \
#     /n/fs/vlm-driving/VAD-VLM/projects/configs/VAD/VAD_tiny_e2e_small_p1_p2_p3_st.py \
#     --deterministic \
#     --work-dir /n/fs/vlm-driving/VAD-VLM/outputs/VAD_tiny_e2e_small_p1_p2_p3_st \

python -m torch.distributed.run \
    --nproc_per_node=8 \
    --master_port=2333 \
    /n/fs/vlm-driving/VAD-VLM/tools/train.py \
    /n/fs/vlm-driving/VAD-VLM/projects/configs/VAD/VAD_base_stage1_full_p1_p2_p3_st_b.py \
    --launcher pytorch \
    --deterministic \
    --work-dir /n/fs/vlm-driving/VAD-VLM/outputs/VAD_base_stage1_full_p1_p2_p3_st_b