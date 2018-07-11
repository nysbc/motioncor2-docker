# MotionCor2 for Docker

## Installation

Ensure Cuda 8.0 is installed properly on the host machine.

Copy this repository with the command `git clone http://github.com/nysbc/motioncor2-docker`

Install Docker: https://docs.docker.com/install/

Install Nvidia-Docker: https://github.com/NVIDIA/nvidia-docker

Download and install MotionCor2: http://msg.ucsf.edu/em/software/motioncor2.html

Copy and unzip the MotionCor2 zip file into the motioncor2-docker directory.

Change directories to motioncor2-docker.

Run the build script: `./build.sh`

The build script should take 1-2 minutes if Docker and Nvidia-Docker are installed properly.

Run MotionCor2 with the command ./motioncor2. You should see the output from MotionCor2:
```
Usage: MotionCor2 Tags
-InMrc         
  1. Input MRC file that stores dose fractionated stacks.
  2. It can be a MRC file containing a single stack collected
     in Leginon or multiple stacks collected in UcsfTomo.
  3. It can also be the path of a folder containing multiple
     MRC files when -Serial option is turned on.

-InTiff        
  1. Input TIFF file that stores a dose fractionated stack.
-OutMrc        
  1. Output MRC file that stores the frame sum.
  2. It can be either a MRC file name or the prefix of a series
     MRC files when -Serial option is turned on.

-ArcDir        
 1. Path of the archive folder that holds the archived raw
    stacks with each pixel packed into 4 bits.
 2. The archived stacks are saved in MRC file with the gain
    reference saved in the extended header.
 3. The rotated and/or flipped gain reference will be saved
    if -RotGain and or -FlipGain are enabled.

...
...
...
```
