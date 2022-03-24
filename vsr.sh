#!/bin/bash
EDVR=("configs/restorers/edvr/edvrm_wotsa_x4_g8_600k_reds.py" "models/edvrm_wotsa_x4_8x4_600k_reds_20200522-0570e567.pth")
BASICVSR=("configs/restorers/basicvsr/basicvsr_reds4.py" "models/basicvsr_reds4_20120409-0e599677.pth")
BASICVSR_PP=("configs/restorers/basicvsr_plusplus/basicvsr_plusplus_c64n7_8x1_600k_reds4.py" "models/basicvsr_plusplus_c64n7_8x1_600k_reds4_20210217-db622b2f.pth")

CONFIG=${BASICVSR_PP[0]}
MODEL=${BASICVSR_PP[1]}
INPUT=data/majok2.mp4
OUTPUT=output/out2.mp4

python demo/restoration_video_demo.py \
    $CONFIG \
    $MODEL \
    $INPUT \
    $OUTPUT \
    --window_size=5