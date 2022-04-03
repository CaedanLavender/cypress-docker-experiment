#!/bin/sh
if [ $# -eq 0 ]; then
   echo "No arguments"
else 
if [ $1 = "build" ]; then
   echo "build is successfull"
   # docker build -t cypress-proto:1.0.3 .
elif [ $1 = "run" ]; then
   echo "run is successfull"
   # docker run cypress-proto:1.0.3 .
else
   echo "unknown argument"
fi
fi