#!/bin/bash
python3 -c 'import tensorflow; print("TensorFlow", tensorflow.__version__)'
#python3 -c 'import tensorrt; print("TensorRT", tensorrt.__version__)'
python3 -c 'from platform import python_version; print("Python3", python_version())'
python3 -c 'import numpy; print("numpy ", numpy.__version__)'
python3 -c 'import matplotlib; print("matplotlib", matplotlib.__version__)'
python3 -c 'import seaborn; print("seaborn", seaborn.__version__)'
echo jupyterlab: `jupyter --version`
