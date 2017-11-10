#!/bin/sh
set -e

# run build.sh for building container
IMAGE=django-raster-demo

CONTAINER_NAME=django-raster-demo
PORT=8888

# Postgis connection
DBCN=postgres
DATABASE_CON=postgres://postgres:secretpass@$DBCN

docker stop $CONTAINER_NAME || true && docker rm $CONTAINER_NAME || true

docker run \
       --name $CONTAINER_NAME \
       -d \
       -p $PORT:80 \
       --restart=always \
       --link $DBCN \
       -e DATABASE_URL=$DATABASE_CON/raster_django_demo \
       $IMAGE
