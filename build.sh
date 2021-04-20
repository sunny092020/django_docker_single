#!/bin/bash

APP_DIR=$1
ENV=$2

cp .dockerignore $APP_DIR
export MAIN_MODULE=smart_assist_maintenance

cp web/Dockerfile.$ENV $APP_DIR/Dockerfile.prod
cp web/entrypoint.$ENV.sh $APP_DIR/entrypoint.prod.sh
APP_DIR=$APP_DIR docker-compose -f common/docker-compose.$ENV.yml up --build 

