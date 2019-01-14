#!/bin/bash

python3 ../python_scripts/train_classifier.py \
	--input-dir ../output/intermediate \
	--model-path ../etc/20170511-185253/20170511-185253.pb \
	--classifier-path ../output/classifier.pkl \
	--num-threads 16 \
	--num-epochs 5 \
	--min-num-images-per-class 10