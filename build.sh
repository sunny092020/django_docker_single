#!/bin/bash

APP_DIR=$1

cp web/Dockerfile.prod $APP_DIR
cp web/entrypoint.prod.sh $APP_DIR
cp .dockerignore $APP_DIR

APP_DIR=$APP_DIR docker-compose -f common/docker-compose.prod.yml up --build 
