#!/bin/bash

source bin/activate.sh
dr-upload-custom_files
dr-update
dr-start-training -wqv
sleep $(($DR_TRAIN_TIME * 60))
sudo dr-stop-training
dr-stop-viewer
