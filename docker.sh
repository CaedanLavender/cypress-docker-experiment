#!/bin/sh
if [ $# -eq 0 ]; then
   echo "No arguments"
else 
if [ $1 = "build" ]; then
   echo "DOCKER BUILD"
   docker build -t cypress-proto:1.0.3 .
elif [ $1 = "run" ]; then
   echo "DOCKER RUN"
   docker run cypress-proto:1.0.3 .
else
   echo "Unknown argument"
fi
fi