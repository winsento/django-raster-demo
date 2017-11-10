#!/bin/sh
set -e

IMAGE=django-raster-demo
docker build -t $IMAGE .
