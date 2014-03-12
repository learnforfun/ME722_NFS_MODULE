#!/bin/bash
#################################################
# this shell script is used to set environment varible
#################################################
export ARCH=arm
export SUBARCH=arm
export CROSS_COMPILE=arm-eabi-
#TCDir is the ToolChain directoy
TCDir="/root/arm-eabi-4.4.3-master/bin/"
export PATH=$PATH:$TCDir