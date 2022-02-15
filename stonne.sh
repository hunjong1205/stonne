#!/bin/zsh

git clone --recursive https://github.com/stonne-simulator/stonne.git
conda install pyyaml
conda install numpy
export USE_CUDA=0
export USE_CUDNN=0
cd stonne
cd pytorch-frontend
export CMAKE_PREFIX_PATH=${CONDA_PREFIX:-"$(dirname $(which conda))/../"}
python setup.py install

cd stonne_connection
python setup.py install

