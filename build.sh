#!/usr/bin/env bash

CUDA_VERSION=80
MOTIONCOR_EXE=MotionCor2_1.1.0-Cuda$CUDA_VERSION
DOCKER_WEBSITE=https://docs.docker.com/install/
NVIDIA_DOCKER_WEBSITE=https://github.com/NVIDIA/nvidia-docker
MOTIONCOR_WEBSITE=http://msg.ucsf.edu/em/software/motioncor2.html
MOTIONCOR_LOCATION=$(which $MOTIONCOR_EXE)

check_requirements() {
if [ ! -f $MOTIONCOR_EXE ]; then
  echo "$MOTIONCOR_EXE not found in this directory.\n";
  echo "Download MotionCor2 at $MOTIONCOR_WEBSITE.\n";
  exit
else
  printf "Found MotionCor2 installed at $MOTIONCOR_EXE.\n";
fi

DOCKER_LOCATION=$(which docker)
if [[ ! -z $DOCKER_LOCATION ]]; then
  printf "Found Docker installed at $DOCKER_LOCATION.\n";

else
  printf "Docker not found; see installation instructions at $DOCKER_WEBSITE.\n";
  exit
  
fi


NVIDIA_DOCKER_LOCATION=$(which nvidia-docker)
if [[ ! -z $NVIDIA_DOCKER_LOCATION ]]; then
  printf "Found Nvidia-Docker installed at $NVIDIA_DOCKER_LOCATION.\n";

else
  printf "NVIDIA-Docker not found; see installation instructions at $NVIDIA_DOCKER_WEBSITE.\n";
  exit
fi

}


build() {

nvidia-docker build -t motioncor2_cuda$CUDA_VERSION -f Dockerfile .

}


check_requirements
build

