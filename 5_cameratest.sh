#!/bin/bash
gst-launch-1.0 nvarguscamerasrc ! 'video/x-raw(memory:NVMM),width=3820, height=2464, framerate=25/1, format=NV12' ! nvvidconv flip-method=2 ! 'video/x-raw,width=1200,height=900' ! nvvidconv ! nvegltransform ! nveglglessink -e
