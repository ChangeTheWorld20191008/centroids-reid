# # [Test]
# python3 train_ctl_model.py \
# --config_file="configs/256_resnet50.yml" \
# GPU_IDS [0] \
# DATASETS.NAMES 'dukemtmcreid' \
# DATASETS.ROOT_DIR './data/DukeMTMC-reID/' \
# SOLVER.IMS_PER_BATCH 16 \
# TEST.IMS_PER_BATCH 128 \
# SOLVER.BASE_LR 0.00035 \
# OUTPUT_DIR './logs/dukemtmcreid/256_resnet50' \
# DATALOADER.USE_RESAMPLING False \
# TEST.ONLY_TEST True \
# MODEL.PRETRAIN_PATH "/home/zhuhao/myModel/human_reid/dukemtmcreid_resnet50_256_128_epoch_120.ckpt"

# # [Train]: without ibn
# python3 train_ctl_model.py \
# --config_file="configs/256_resnet50.yml" \
# GPU_IDS [0] \
# DATASETS.NAMES 'dukemtmcreid' \
# DATASETS.ROOT_DIR './data/DukeMTMC-reID/' \
# SOLVER.IMS_PER_BATCH 16 \
# TEST.IMS_PER_BATCH 128 \
# SOLVER.BASE_LR 0.00035 \
# OUTPUT_DIR './logs/dukemtmcreid/256_resnet50' \
# DATALOADER.USE_RESAMPLING False \
# MODEL.PRETRAIN_PATH "/home/zhuhao/myModel/human_reid/resnet50-19c8e357.pth"

# [Train]: with ibn
python3 train_ctl_model.py \
--config_file="configs/320_resnet50_ibn_a.yml" \
GPU_IDS [0] \
DATASETS.NAMES 'dukemtmcreid' \
DATASETS.ROOT_DIR './data/DukeMTMC-reID/' \
SOLVER.IMS_PER_BATCH 16 \
TEST.IMS_PER_BATCH 128 \
SOLVER.BASE_LR 0.00035 \
OUTPUT_DIR './logs/dukemtmcreid/320_resnet50_ibn' \
DATALOADER.USE_RESAMPLING False \
MODEL.PRETRAIN_PATH "/home/zhuhao/myModel/human_reid/r50_ibn_a.pth"