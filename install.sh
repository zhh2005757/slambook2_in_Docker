#!/bin/bash

# cmake
cd cmake-3.17.5/
./configure
make
make install

# eigen
cd ../slambook2/3rdparty/eigen-3.3.9
mkdir build
cd build
cmake ..
make install

# glog
cd ../../glog
mkdir build
cd build
cmake ..
make
make install

# gflags
cd ../../gflags
mkdir build
cd build
cmake ..
make
make install

# ceres
cd ../../ceres-solver
mkdir build
cd build
cmake ..
make
make install

# opencv
cd ../../opencv-3.3.0
mkdir build
cd build
cmake ..
make -j4
make install

# DBow
cd ../../DBoW3
mkdir build
cd build
cmake ..
make
make install

# g2o
cd ../../g2o
mkdir build
cd build
cmake ..
make 
make install

# Pangolin
cd ../../Pangolin
mkdir build
cd build
cmake ..
make
make install

# Sophus
cd ../../Sophus
mkdir build
cd build
cmake ..
make
make install

# googletest
cd ../../googletest
mkdir build
cd build
cmake ..
make 
make install

# octomap
cd ../../octomap
mkdir build
cd build
cmake ..
make
make install

# fmt
cd ../../fmt
mkdir build
cd build
cmake ..
make
make install
