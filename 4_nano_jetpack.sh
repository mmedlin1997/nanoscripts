#!/bin/bash
echo -e "\nJetson Nano Jetpack ML Framework"
echo -e "(Linux + Ubuntu + L4T + ML Frameworks + ImagePkgs)"
echo -e "---------------------"

echo Linux Kernel Ver: `uname -snrp`
echo Ubuntu Ver: `cat /etc/lsb-release | grep "DESCRIPTION" | cut -d'=' -f2`
echo L4T Ver: `sed -n 1p /etc/nv_tegra_release`
echo TensorRT: `dpkg -l | grep -m 1 tensorrt | cut -b51-68`
echo cuDNN: `cat /usr/include/cudnn_version.h | grep CUDNN_MAJOR -A 2` 
echo CUDA: `cat /usr/local/cuda/version.txt`
echo VisionWorks: `dpkg -l | grep -m 1 visionworks | cut -b20-`
echo GStreamer: `gst-launch-1.0 --version | sed -n 2p`
echo OpenCV: `dpkg -l | grep -m 1 opencv | cut -b15-`
