python -m torch.distributed.launch --nproc_per_node=8 \
    train_kd.py \
    --teacher-model deeplabv3 \
    --student-model psp \
    --teacher-backbone resnet101 \
    --student-backbone resnet18 \
    --data [your dataset path]/cityscapes/ \
    --save-dir [your directory path to store checkpoint files] \
    --log-dir [your directory path to store log files] \
    --gpu-id 0,1,2,3,4,5,6,7 \
    --teacher-pretrained [your teacher weights path]/deeplabv3_resnet101_citys_best_model.pth \
    --student-pretrained-base [your pretrained-backbone path]/resnet18-imagenet.pth