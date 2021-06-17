#!/bin/bash

APP_DIR=$1
ENV=$2

cp .dockerignore $APP_DIR

cp web/Dockerfile.$ENV $APP_DIR/Dockerfile
cp web/entrypoint.$ENV.sh $APP_DIR/entrypoint.sh
APP_DIR=$APP_DIR docker-compose --env-file $PWD/common/.env.prod -f common/docker-compose.$ENV.yml build
