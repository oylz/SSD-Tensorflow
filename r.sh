#!/bin/bash

source ./chgpath

export LD_LIBRARY_PATH=/usr/local/cuda-8.0-cudnn6.0/lib64/:$LD_LIBRARY_PATH
echo $LD_LIBRARY_PATH

export LD_LIBRARY_PATH=/home/xyz/code1/caffe-ssd/distribute/lib:$LD_LIBRARY_PATH
export PYTHONPATH=/home/xyz/code1/caffe-ssd/distribute/python:$PYTHONPATH
echo "PYTHONPATH:"$PYTHONPATH



function D1(){
python caffe_to_tensorflow.py \
--model_name=ssd_300_vgg \
--num_classes=21 \
--caffemodel_path=./tmp/VGG_coco_SSD_300x300.caffemodel
}


function D2(){
python caffe_to_tensorflow.py \
--model_name=ssd_640_vgg \
--num_classes=2 \
--caffemodel_path=../SFD/model/SFD.caffemodel
}


D2




