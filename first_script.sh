#!/bin/bash
###################################
## Author : Shankesh
## Date : 23-01-2025
## Version : 1.0
## 
## This is custom script to check the nodeHealth vm
#############################################################

#DebugMode
set -x

# Memory Usage
free -g

# CPU Usage
nproc

# Disk Space
df -h 
