#!/bin/bash

APP_DIR=$1
ENV=$2

cp .dockerignore $APP_DIR
export MAIN_MODULE=smart_assist_maintenance

if [ "$ENV" = "development" ]
then
  cp web/Dockerfile.development $APP_DIR/Dockerfile.prod
  cp web/entrypoint.development.sh $APP_DIR/entrypoint.prod.sh
  APP_DIR=$APP_DIR docker-compose -f common/docker-compose.production.yml -f common/docker-compose.development.yml up --build 
else
  cp web/Dockerfile.production $APP_DIR/Dockerfile.prod
  cp web/entrypoint.production.sh $APP_DIR/entrypoint.prod.sh
  APP_DIR=$APP_DIR docker-compose -f common/docker-compose.production.yml up --build 
fi






