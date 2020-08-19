#!/bin/bash
SP="   "

echo -e "\nJetson Nano Hardware"
echo -e "--------------------"
echo -e "Tegra: X1 SOC (CPU+GPU)"
echo -e "${SP}CPU: 64-bit Quad-core ARM Cortex-A57 @ 1.43GHz"
echo -e "${SP}GPU: 128-core NVIDIA Maxwell @ 921MHz"
echo -e `/usr/local/cuda/samples/1_Utilities/deviceQuery/deviceQuery`
echo MEM: 4GB 64-bit LPDDR4 @ 1600MHz \| 25.6 GB/s

echo -e "\nJetson Nano Software"
echo -e "--------------------"
echo -e "JetPack SDK(L4t+Linux+Ubuntu+MLFrameworks+ImagePkgs) Ver: "
echo -e "${SP}L4T (Linux4Tegra) Ver: `sed -n 1p /etc/nv_tegra_release`"
echo -e "${SP}Linux Kernel Ver: `uname -snrp`"
echo -e "${SP}Ubuntu Ver: `cat /etc/lsb-release | grep "DESCRIPTION" | cut -d'=' -f2`"

echo -e "\nJetPack ML Frameworks"
echo -e "---------------------"
echo CUDA `cat /usr/local/cuda/version.txt`
echo cuDNN-
python3 -c 'import tensorrt; print("TensorRT "+tensorrt.__version__)'
python3 -c 'import tensorflow; print(tensorflow.__version__)'
python3 -c 'import torch; print("PyTorch "+torch.__version__)'
echo Caffe-
echo Keras-
python3 -c 'import cv2; print("OpenCV cv2 "+cv2.__version__)'
echo VisionWorks
echo GStreamer `gst-launch-1.0 --version | sed -n 2p`

echo -e "\nLanguages"
echo -e "---------"
echo `gcc --version | sed -n 1p`
echo `make --version`
echo `cmake --version | sed -n 1p`
echo `python3 --version`
echo node `node -v`
echo npm `npm -v`
echo nvcc `nvcc --version | grep "Cuda compilation tools" | cut -d',' -f3` \(NVidia C/CUDA/GPU compiler\) 

echo -e "\nSupport packages"
echo -e "----------------"
python -c 'import numpy; print("numpy "+numpy.__version__)'
python -c 'import numpy; print("scipy "+scipy.__version__)'
python -c 'import numpy; print("PIL "+PIL.__version__)'
#python -c 'import numpy; print("numpy "+numpy.__version__)'

