# source /n/fs/pci-sharedt/bl6948/miniconda3/etc/profile.d/conda.sh
# conda activate /n/fs/pci-sharedt/bl6948/miniconda3/vad
export PYTHONPATH=/n/fs/not-fmrl/Projects/ActivePerception-FMRL/VAD-VLM
export LD_LIBRARY_PATH="$CONDA_PREFIX/lib:$LD_LIBRARY_PATH"


# export Torch hub home directory
export TORCH_HOME=/n/fs/not-fmrl/languageModels

python /n/fs/not-fmrl/Projects/ActivePerception-FMRL/VAD-VLM/tools/train.py \
    /n/fs/not-fmrl/Projects/ActivePerception-FMRL/VAD-VLM/projects/configs/VAD/VAD_tiny_e2e.py \
    --deterministic \
    --work-dir /n/fs/not-fmrl/Projects/ActivePerception-FMRL/VAD-VLM/outputs/VAD_tiny_e2e \
# python -m torch.distributed.run \
#     --nproc_per_node=4 \
#     --master_port=2333 \
#     /n/fs/vlm-driving/VAD-VLM/tools/train.py \
#     projects/configs/VAD/VAD_base.py \
#     --launcher pytorch \
#     --deterministic \
#     --work-dir /n/fs/vlm-driving/VAD-VLM/outputs/VAD_tiny_e2e
