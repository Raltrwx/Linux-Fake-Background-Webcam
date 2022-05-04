#!/bin/bash
trizen -S linux-headers v4l2loopback-dkms python python-pip miniconda3
conda env create -n webcam --file environment.yaml
