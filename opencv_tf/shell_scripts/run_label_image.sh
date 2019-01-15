#!/bin/bash

python3 ../python_scripts/label_image.py \
	--graph=/tmp/output_graph.pb \
	--labels=/tmp/output_labels.txt \
	--input_layer=Placeholder \
	--output_layer=final_result \
	--image=../test_devon.jpg
