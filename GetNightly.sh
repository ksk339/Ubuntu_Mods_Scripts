#!/bin/bash

INCLUDE_GPU=false
if [ $# gt 4 ]; then
//the last argument is whether to inlude gpu
  if [ $4 == "gpu" ];then
     INCLUDE_GPU=true
  fi
fi
get_Package()
{
#check the existence of the mount point
if [ -d  "/mnt/Nightly/Engineering_Nightly" ]; then
   echo "this is existing"
   echo "$1" 
   #move to the chip specific folder
   cd /mnt/Nightly/Engineering_Nightly/Silicon/$2   
   #cp the correc nightly
   #untar the nightly into the current folder
   #untar flash binaries too
   
else
    echo "The nightlies path has not been mounted check your fstab"
fi
}

get_Package
